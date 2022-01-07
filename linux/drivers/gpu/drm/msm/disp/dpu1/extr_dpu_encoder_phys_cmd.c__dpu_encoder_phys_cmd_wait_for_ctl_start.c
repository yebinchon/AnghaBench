
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_wait_info {int timeout_ms; int * atomic_cnt; int * wq; } ;
struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {int pending_ctlstart_cnt; int pending_kickoff_wq; int hw_ctl; } ;


 int DPU_ERROR (char*) ;
 int DPU_ERROR_CMDENC (struct dpu_encoder_phys_cmd*,char*) ;
 int EINVAL ;
 int ETIMEDOUT ;
 int INTR_IDX_CTL_START ;
 int KICKOFF_TIMEOUT_MS ;
 int dpu_encoder_helper_wait_for_irq (struct dpu_encoder_phys*,int ,struct dpu_encoder_wait_info*) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static int _dpu_encoder_phys_cmd_wait_for_ctl_start(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_phys_cmd *cmd_enc =
   to_dpu_encoder_phys_cmd(phys_enc);
 struct dpu_encoder_wait_info wait_info;
 int ret;

 if (!phys_enc || !phys_enc->hw_ctl) {
  DPU_ERROR("invalid argument(s)\n");
  return -EINVAL;
 }

 wait_info.wq = &phys_enc->pending_kickoff_wq;
 wait_info.atomic_cnt = &phys_enc->pending_ctlstart_cnt;
 wait_info.timeout_ms = KICKOFF_TIMEOUT_MS;

 ret = dpu_encoder_helper_wait_for_irq(phys_enc, INTR_IDX_CTL_START,
   &wait_info);
 if (ret == -ETIMEDOUT) {
  DPU_ERROR_CMDENC(cmd_enc, "ctl start interrupt wait failed\n");
  ret = -EINVAL;
 } else if (!ret)
  ret = 0;

 return ret;
}
