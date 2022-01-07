
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int cntl; int base; } ;
struct intel_plane {int pipe; int i9xx_plane; int base; TYPE_1__ cursor; int check_plane; int get_hw_state; int disable_plane; int update_plane; int max_stride; int id; int frontbuffer_bit; } ;
struct drm_i915_private {int drm; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;


 int ARRAY_SIZE (int ) ;
 unsigned int BIT (int) ;
 int DRM_MODE_ROTATE_0 ;
 int DRM_MODE_ROTATE_180 ;
 int DRM_PLANE_TYPE_CURSOR ;
 struct intel_plane* ERR_PTR (int) ;
 scalar_t__ HAS_CUR_FBC (struct drm_i915_private*) ;
 int INTEL_FRONTBUFFER (int,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_ERR (struct intel_plane*) ;
 scalar_t__ IS_I845G (struct drm_i915_private*) ;
 scalar_t__ IS_I865G (struct drm_i915_private*) ;
 int PLANE_CURSOR ;
 int cursor_format_modifiers ;
 int drm_plane_create_rotation_property (int *,int,int) ;
 int drm_plane_helper_add (int *,int *) ;
 int drm_universal_plane_init (int *,int *,unsigned int,int *,int ,int ,int ,int ,char*,int ) ;
 int i845_check_cursor ;
 int i845_cursor_get_hw_state ;
 int i845_cursor_max_stride ;
 int i845_disable_cursor ;
 int i845_update_cursor ;
 int i9xx_check_cursor ;
 int i9xx_cursor_get_hw_state ;
 int i9xx_cursor_max_stride ;
 int i9xx_disable_cursor ;
 int i9xx_update_cursor ;
 int intel_cursor_formats ;
 int intel_cursor_plane_funcs ;
 struct intel_plane* intel_plane_alloc () ;
 int intel_plane_free (struct intel_plane*) ;
 int intel_plane_helper_funcs ;
 int pipe_name (int) ;

__attribute__((used)) static struct intel_plane *
intel_cursor_plane_create(struct drm_i915_private *dev_priv,
     enum pipe pipe)
{
 unsigned int possible_crtcs;
 struct intel_plane *cursor;
 int ret;

 cursor = intel_plane_alloc();
 if (IS_ERR(cursor))
  return cursor;

 cursor->pipe = pipe;
 cursor->i9xx_plane = (enum i9xx_plane_id) pipe;
 cursor->id = PLANE_CURSOR;
 cursor->frontbuffer_bit = INTEL_FRONTBUFFER(pipe, cursor->id);

 if (IS_I845G(dev_priv) || IS_I865G(dev_priv)) {
  cursor->max_stride = i845_cursor_max_stride;
  cursor->update_plane = i845_update_cursor;
  cursor->disable_plane = i845_disable_cursor;
  cursor->get_hw_state = i845_cursor_get_hw_state;
  cursor->check_plane = i845_check_cursor;
 } else {
  cursor->max_stride = i9xx_cursor_max_stride;
  cursor->update_plane = i9xx_update_cursor;
  cursor->disable_plane = i9xx_disable_cursor;
  cursor->get_hw_state = i9xx_cursor_get_hw_state;
  cursor->check_plane = i9xx_check_cursor;
 }

 cursor->cursor.base = ~0;
 cursor->cursor.cntl = ~0;

 if (IS_I845G(dev_priv) || IS_I865G(dev_priv) || HAS_CUR_FBC(dev_priv))
  cursor->cursor.size = ~0;

 possible_crtcs = BIT(pipe);

 ret = drm_universal_plane_init(&dev_priv->drm, &cursor->base,
           possible_crtcs, &intel_cursor_plane_funcs,
           intel_cursor_formats,
           ARRAY_SIZE(intel_cursor_formats),
           cursor_format_modifiers,
           DRM_PLANE_TYPE_CURSOR,
           "cursor %c", pipe_name(pipe));
 if (ret)
  goto fail;

 if (INTEL_GEN(dev_priv) >= 4)
  drm_plane_create_rotation_property(&cursor->base,
         DRM_MODE_ROTATE_0,
         DRM_MODE_ROTATE_0 |
         DRM_MODE_ROTATE_180);

 drm_plane_helper_add(&cursor->base, &intel_plane_helper_funcs);

 return cursor;

fail:
 intel_plane_free(cursor);

 return ERR_PTR(ret);
}
