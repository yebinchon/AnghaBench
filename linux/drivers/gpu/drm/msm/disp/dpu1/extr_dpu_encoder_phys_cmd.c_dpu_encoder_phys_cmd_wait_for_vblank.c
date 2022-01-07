
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_wait_info {int timeout_ms; int * atomic_cnt; int * wq; } ;
struct dpu_encoder_phys_cmd {int pending_vblank_cnt; int pending_vblank_wq; } ;
struct dpu_encoder_phys {int dummy; } ;


 int EINVAL ;
 int INTR_IDX_RDPTR ;
 int KICKOFF_TIMEOUT_MS ;
 int atomic_inc (int *) ;
 int dpu_encoder_helper_wait_for_irq (struct dpu_encoder_phys*,int ,struct dpu_encoder_wait_info*) ;
 int dpu_encoder_phys_cmd_is_master (struct dpu_encoder_phys*) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static int dpu_encoder_phys_cmd_wait_for_vblank(
  struct dpu_encoder_phys *phys_enc)
{
 int rc = 0;
 struct dpu_encoder_phys_cmd *cmd_enc;
 struct dpu_encoder_wait_info wait_info;

 if (!phys_enc)
  return -EINVAL;

 cmd_enc = to_dpu_encoder_phys_cmd(phys_enc);


 if (!dpu_encoder_phys_cmd_is_master(phys_enc))
  return rc;

 wait_info.wq = &cmd_enc->pending_vblank_wq;
 wait_info.atomic_cnt = &cmd_enc->pending_vblank_cnt;
 wait_info.timeout_ms = KICKOFF_TIMEOUT_MS;

 atomic_inc(&cmd_enc->pending_vblank_cnt);

 rc = dpu_encoder_helper_wait_for_irq(phys_enc, INTR_IDX_RDPTR,
   &wait_info);

 return rc;
}
