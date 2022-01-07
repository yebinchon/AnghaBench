
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct dpu_encoder_phys {int dummy; } ;


 int DPU_DEBUG_VIDENC (struct dpu_encoder_phys*,char*) ;

__attribute__((used)) static bool dpu_encoder_phys_vid_mode_fixup(
  struct dpu_encoder_phys *phys_enc,
  const struct drm_display_mode *mode,
  struct drm_display_mode *adj_mode)
{
 if (phys_enc)
  DPU_DEBUG_VIDENC(phys_enc, "\n");




 return 1;
}
