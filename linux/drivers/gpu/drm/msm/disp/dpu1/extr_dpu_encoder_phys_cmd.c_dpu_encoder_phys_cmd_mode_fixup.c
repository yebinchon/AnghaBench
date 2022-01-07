
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct dpu_encoder_phys {int dummy; } ;


 int DPU_DEBUG_CMDENC (int ,char*) ;
 int to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static bool dpu_encoder_phys_cmd_mode_fixup(
  struct dpu_encoder_phys *phys_enc,
  const struct drm_display_mode *mode,
  struct drm_display_mode *adj_mode)
{
 if (phys_enc)
  DPU_DEBUG_CMDENC(to_dpu_encoder_phys_cmd(phys_enc), "\n");
 return 1;
}
