
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tv_mode {int component_only; int progressive; } ;
struct input_res {int w; scalar_t__ h; } ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dev; int state; } ;


 int ARRAY_SIZE (struct input_res*) ;
 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 struct drm_display_mode* drm_mode_create (int ) ;
 int drm_mode_debug_printmodeline (struct drm_display_mode*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct input_res* input_res_table ;
 struct tv_mode* intel_tv_mode_find (int ) ;
 int intel_tv_mode_to_mode (struct drm_display_mode*,struct tv_mode const*) ;
 scalar_t__ intel_tv_mode_vdisplay (struct tv_mode const*) ;
 int intel_tv_scale_mode_horiz (struct drm_display_mode*,int,int ,int ) ;
 int intel_tv_scale_mode_vert (struct drm_display_mode*,scalar_t__,int ,int ) ;
 int intel_tv_set_mode_type (struct drm_display_mode*,struct tv_mode const*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int
intel_tv_get_modes(struct drm_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 const struct tv_mode *tv_mode = intel_tv_mode_find(connector->state);
 int i, count = 0;

 for (i = 0; i < ARRAY_SIZE(input_res_table); i++) {
  const struct input_res *input = &input_res_table[i];
  struct drm_display_mode *mode;

  if (input->w > 1024 &&
      !tv_mode->progressive &&
      !tv_mode->component_only)
   continue;


  if (IS_GEN(dev_priv, 3) && input->w > 1024 &&
      input->h > intel_tv_mode_vdisplay(tv_mode))
   continue;

  mode = drm_mode_create(connector->dev);
  if (!mode)
   continue;
  intel_tv_mode_to_mode(mode, tv_mode);
  if (count == 0) {
   DRM_DEBUG_KMS("TV mode:\n");
   drm_mode_debug_printmodeline(mode);
  }
  intel_tv_scale_mode_horiz(mode, input->w, 0, 0);
  intel_tv_scale_mode_vert(mode, input->h, 0, 0);
  intel_tv_set_mode_type(mode, tv_mode);

  drm_mode_set_name(mode);

  drm_mode_probed_add(connector, mode);
  count++;
 }

 return count;
}
