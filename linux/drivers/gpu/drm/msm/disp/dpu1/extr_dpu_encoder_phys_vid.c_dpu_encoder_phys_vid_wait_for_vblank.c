
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_wait_info {int timeout_ms; int * atomic_cnt; int * wq; } ;
struct dpu_encoder_phys {int pending_kickoff_cnt; int pending_kickoff_wq; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int INTR_IDX_VSYNC ;
 int KICKOFF_TIMEOUT_MS ;
 int dpu_encoder_helper_report_irq_timeout (struct dpu_encoder_phys*,int ) ;
 int dpu_encoder_helper_wait_for_irq (struct dpu_encoder_phys*,int ,struct dpu_encoder_wait_info*) ;
 int dpu_encoder_phys_vid_is_master (struct dpu_encoder_phys*) ;
 int pr_err (char*) ;

__attribute__((used)) static int dpu_encoder_phys_vid_wait_for_vblank(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_wait_info wait_info;
 int ret;

 if (!phys_enc) {
  pr_err("invalid encoder\n");
  return -EINVAL;
 }

 wait_info.wq = &phys_enc->pending_kickoff_wq;
 wait_info.atomic_cnt = &phys_enc->pending_kickoff_cnt;
 wait_info.timeout_ms = KICKOFF_TIMEOUT_MS;

 if (!dpu_encoder_phys_vid_is_master(phys_enc)) {
  return 0;
 }


 ret = dpu_encoder_helper_wait_for_irq(phys_enc, INTR_IDX_VSYNC,
   &wait_info);

 if (ret == -ETIMEDOUT) {
  dpu_encoder_helper_report_irq_timeout(phys_enc, INTR_IDX_VSYNC);
 }

 return ret;
}
