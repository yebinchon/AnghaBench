
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* wait_reset_status ) (struct dpu_hw_ctl*) ;} ;
struct dpu_hw_ctl {int idx; TYPE_1__ ops; } ;
struct dpu_encoder_phys {struct dpu_hw_ctl* hw_ctl; } ;


 int DPU_ERROR (char*) ;
 int DPU_ERROR_VIDENC (struct dpu_encoder_phys*,char*,int ,int) ;
 int INTR_IDX_VSYNC ;
 int dpu_encoder_helper_unregister_irq (struct dpu_encoder_phys*,int ) ;
 int stub1 (struct dpu_hw_ctl*) ;

__attribute__((used)) static void dpu_encoder_phys_vid_prepare_for_kickoff(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_hw_ctl *ctl;
 int rc;

 if (!phys_enc) {
  DPU_ERROR("invalid encoder/parameters\n");
  return;
 }

 ctl = phys_enc->hw_ctl;
 if (!ctl || !ctl->ops.wait_reset_status)
  return;





 rc = ctl->ops.wait_reset_status(ctl);
 if (rc) {
  DPU_ERROR_VIDENC(phys_enc, "ctl %d reset failure: %d\n",
    ctl->idx, rc);
  dpu_encoder_helper_unregister_irq(phys_enc, INTR_IDX_VSYNC);
 }
}
