
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int get_fifo_size; int * update_wm; int optimize_watermarks; int initial_watermarks; int compute_intermediate_wm; int compute_pipe_wm; int atomic_update_watermarks; int compute_global_watermarks; } ;
struct TYPE_4__ {scalar_t__* cur_latency; scalar_t__* spr_latency; scalar_t__* pri_latency; } ;
struct drm_i915_private {int is_ddr3; TYPE_2__ display; int mem_freq; int fsb_freq; TYPE_1__ wm; } ;
struct TYPE_6__ {int num_pipes; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 int DRM_INFO (char*,char*,int ,int ) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 TYPE_3__* INTEL_INFO (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int IS_MOBILE (struct drm_i915_private*) ;
 scalar_t__ IS_PINEVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int g4x_compute_intermediate_wm ;
 int g4x_compute_pipe_wm ;
 int g4x_initial_watermarks ;
 int g4x_optimize_watermarks ;
 int g4x_setup_wm_latency (struct drm_i915_private*) ;
 int i830_get_fifo_size ;
 int i845_get_fifo_size ;
 int * i845_update_wm ;
 int i915_ironlake_get_mem_freq (struct drm_i915_private*) ;
 int i915_pineview_get_mem_freq (struct drm_i915_private*) ;
 int * i965_update_wm ;
 int i9xx_get_fifo_size ;
 void* i9xx_update_wm ;
 int ilk_compute_intermediate_wm ;
 int ilk_compute_pipe_wm ;
 int ilk_initial_watermarks ;
 int ilk_optimize_watermarks ;
 int ilk_setup_wm_latency (struct drm_i915_private*) ;
 int intel_get_cxsr_latency (int,int,int ,int ) ;
 int intel_set_memory_cxsr (struct drm_i915_private*,int) ;
 int * pineview_update_wm ;
 int skl_atomic_update_crtc_wm ;
 int skl_compute_wm ;
 int skl_initial_wm ;
 int skl_setup_wm_latency (struct drm_i915_private*) ;
 int vlv_atomic_update_fifo ;
 int vlv_compute_intermediate_wm ;
 int vlv_compute_pipe_wm ;
 int vlv_initial_watermarks ;
 int vlv_optimize_watermarks ;
 int vlv_setup_wm_latency (struct drm_i915_private*) ;

void intel_init_pm(struct drm_i915_private *dev_priv)
{

 if (IS_PINEVIEW(dev_priv))
  i915_pineview_get_mem_freq(dev_priv);
 else if (IS_GEN(dev_priv, 5))
  i915_ironlake_get_mem_freq(dev_priv);


 if (INTEL_GEN(dev_priv) >= 9) {
  skl_setup_wm_latency(dev_priv);
  dev_priv->display.initial_watermarks = skl_initial_wm;
  dev_priv->display.atomic_update_watermarks = skl_atomic_update_crtc_wm;
  dev_priv->display.compute_global_watermarks = skl_compute_wm;
 } else if (HAS_PCH_SPLIT(dev_priv)) {
  ilk_setup_wm_latency(dev_priv);

  if ((IS_GEN(dev_priv, 5) && dev_priv->wm.pri_latency[1] &&
       dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
      (!IS_GEN(dev_priv, 5) && dev_priv->wm.pri_latency[0] &&
       dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
   dev_priv->display.compute_pipe_wm = ilk_compute_pipe_wm;
   dev_priv->display.compute_intermediate_wm =
    ilk_compute_intermediate_wm;
   dev_priv->display.initial_watermarks =
    ilk_initial_watermarks;
   dev_priv->display.optimize_watermarks =
    ilk_optimize_watermarks;
  } else {
   DRM_DEBUG_KMS("Failed to read display plane latency. "
          "Disable CxSR\n");
  }
 } else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
  vlv_setup_wm_latency(dev_priv);
  dev_priv->display.compute_pipe_wm = vlv_compute_pipe_wm;
  dev_priv->display.compute_intermediate_wm = vlv_compute_intermediate_wm;
  dev_priv->display.initial_watermarks = vlv_initial_watermarks;
  dev_priv->display.optimize_watermarks = vlv_optimize_watermarks;
  dev_priv->display.atomic_update_watermarks = vlv_atomic_update_fifo;
 } else if (IS_G4X(dev_priv)) {
  g4x_setup_wm_latency(dev_priv);
  dev_priv->display.compute_pipe_wm = g4x_compute_pipe_wm;
  dev_priv->display.compute_intermediate_wm = g4x_compute_intermediate_wm;
  dev_priv->display.initial_watermarks = g4x_initial_watermarks;
  dev_priv->display.optimize_watermarks = g4x_optimize_watermarks;
 } else if (IS_PINEVIEW(dev_priv)) {
  if (!intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
         dev_priv->is_ddr3,
         dev_priv->fsb_freq,
         dev_priv->mem_freq)) {
   DRM_INFO("failed to find known CxSR latency "
     "(found ddr%s fsb freq %d, mem freq %d), "
     "disabling CxSR\n",
     (dev_priv->is_ddr3 == 1) ? "3" : "2",
     dev_priv->fsb_freq, dev_priv->mem_freq);

   intel_set_memory_cxsr(dev_priv, 0);
   dev_priv->display.update_wm = ((void*)0);
  } else
   dev_priv->display.update_wm = pineview_update_wm;
 } else if (IS_GEN(dev_priv, 4)) {
  dev_priv->display.update_wm = i965_update_wm;
 } else if (IS_GEN(dev_priv, 3)) {
  dev_priv->display.update_wm = i9xx_update_wm;
  dev_priv->display.get_fifo_size = i9xx_get_fifo_size;
 } else if (IS_GEN(dev_priv, 2)) {
  if (INTEL_INFO(dev_priv)->num_pipes == 1) {
   dev_priv->display.update_wm = i845_update_wm;
   dev_priv->display.get_fifo_size = i845_get_fifo_size;
  } else {
   dev_priv->display.update_wm = i9xx_update_wm;
   dev_priv->display.get_fifo_size = i830_get_fifo_size;
  }
 } else {
  DRM_ERROR("unexpected fall-through in intel_init_pm\n");
 }
}
