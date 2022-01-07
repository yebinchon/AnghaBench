
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_wait_info {int timeout_ms; int * atomic_cnt; int * wq; } ;
struct dpu_encoder_phys_cmd {scalar_t__ pp_timeout_report_cnt; } ;
struct dpu_encoder_phys {int pending_kickoff_cnt; int pending_kickoff_wq; } ;


 int DPU_ERROR (char*) ;
 int EINVAL ;
 int ETIMEDOUT ;
 int INTR_IDX_PINGPONG ;
 int KICKOFF_TIMEOUT_MS ;
 int _dpu_encoder_phys_cmd_handle_ppdone_timeout (struct dpu_encoder_phys*) ;
 int dpu_encoder_helper_wait_for_irq (struct dpu_encoder_phys*,int ,struct dpu_encoder_wait_info*) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static int _dpu_encoder_phys_cmd_wait_for_idle(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_phys_cmd *cmd_enc =
   to_dpu_encoder_phys_cmd(phys_enc);
 struct dpu_encoder_wait_info wait_info;
 int ret;

 if (!phys_enc) {
  DPU_ERROR("invalid encoder\n");
  return -EINVAL;
 }

 wait_info.wq = &phys_enc->pending_kickoff_wq;
 wait_info.atomic_cnt = &phys_enc->pending_kickoff_cnt;
 wait_info.timeout_ms = KICKOFF_TIMEOUT_MS;

 ret = dpu_encoder_helper_wait_for_irq(phys_enc, INTR_IDX_PINGPONG,
   &wait_info);
 if (ret == -ETIMEDOUT)
  _dpu_encoder_phys_cmd_handle_ppdone_timeout(phys_enc);
 else if (!ret)
  cmd_enc->pp_timeout_report_cnt = 0;

 return ret;
}
