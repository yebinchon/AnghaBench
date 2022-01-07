
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wm_config {int num_pipes_active; int sprites_scaled; int sprites_enabled; } ;
struct intel_pipe_wm {int * wm; int sprites_scaled; int sprites_enabled; } ;
struct ilk_wm_maximums {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int INTEL_DDB_PART_1_2 ;
 int ilk_compute_wm_maximums (struct drm_i915_private const*,int ,struct intel_wm_config const*,int ,struct ilk_wm_maximums*) ;
 int ilk_validate_wm_level (int ,struct ilk_wm_maximums*,int *) ;

__attribute__((used)) static bool ilk_validate_pipe_wm(const struct drm_i915_private *dev_priv,
     struct intel_pipe_wm *pipe_wm)
{

 const struct intel_wm_config config = {
  .num_pipes_active = 1,
  .sprites_enabled = pipe_wm->sprites_enabled,
  .sprites_scaled = pipe_wm->sprites_scaled,
 };
 struct ilk_wm_maximums max;


 ilk_compute_wm_maximums(dev_priv, 0, &config, INTEL_DDB_PART_1_2, &max);


 if (!ilk_validate_wm_level(0, &max, &pipe_wm->wm[0])) {
  DRM_DEBUG_KMS("LP0 watermark invalid\n");
  return 0;
 }

 return 1;
}
