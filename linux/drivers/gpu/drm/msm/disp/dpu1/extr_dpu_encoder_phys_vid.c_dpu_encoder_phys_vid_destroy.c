
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys {int dummy; } ;


 int DPU_DEBUG_VIDENC (struct dpu_encoder_phys*,char*) ;
 int DPU_ERROR (char*) ;
 int kfree (struct dpu_encoder_phys*) ;

__attribute__((used)) static void dpu_encoder_phys_vid_destroy(struct dpu_encoder_phys *phys_enc)
{
 if (!phys_enc) {
  DPU_ERROR("invalid encoder\n");
  return;
 }

 DPU_DEBUG_VIDENC(phys_enc, "\n");
 kfree(phys_enc);
}
