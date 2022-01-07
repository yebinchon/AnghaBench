
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct dpu_encoder_phys {struct drm_display_mode cached_mode; int dpu_kms; } ;


 int DPU_DEBUG_VIDENC (struct dpu_encoder_phys*,char*) ;
 int DPU_ERROR (char*) ;
 int _dpu_encoder_phys_vid_setup_irq_hw_idx (struct dpu_encoder_phys*) ;
 int drm_mode_debug_printmodeline (struct drm_display_mode*) ;

__attribute__((used)) static void dpu_encoder_phys_vid_mode_set(
  struct dpu_encoder_phys *phys_enc,
  struct drm_display_mode *mode,
  struct drm_display_mode *adj_mode)
{
 if (!phys_enc || !phys_enc->dpu_kms) {
  DPU_ERROR("invalid encoder/kms\n");
  return;
 }

 if (adj_mode) {
  phys_enc->cached_mode = *adj_mode;
  drm_mode_debug_printmodeline(adj_mode);
  DPU_DEBUG_VIDENC(phys_enc, "caching mode:\n");
 }

 _dpu_encoder_phys_vid_setup_irq_hw_idx(phys_enc);
}
