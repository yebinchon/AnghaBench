
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {struct drm_display_mode cached_mode; } ;


 int DPU_DEBUG_CMDENC (struct dpu_encoder_phys_cmd*,char*) ;
 int DPU_ERROR (char*) ;
 int _dpu_encoder_phys_cmd_setup_irq_hw_idx (struct dpu_encoder_phys*) ;
 int drm_mode_debug_printmodeline (struct drm_display_mode*) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_mode_set(
  struct dpu_encoder_phys *phys_enc,
  struct drm_display_mode *mode,
  struct drm_display_mode *adj_mode)
{
 struct dpu_encoder_phys_cmd *cmd_enc =
  to_dpu_encoder_phys_cmd(phys_enc);

 if (!phys_enc || !mode || !adj_mode) {
  DPU_ERROR("invalid args\n");
  return;
 }
 phys_enc->cached_mode = *adj_mode;
 DPU_DEBUG_CMDENC(cmd_enc, "caching mode:\n");
 drm_mode_debug_printmodeline(adj_mode);

 _dpu_encoder_phys_cmd_setup_irq_hw_idx(phys_enc);
}
