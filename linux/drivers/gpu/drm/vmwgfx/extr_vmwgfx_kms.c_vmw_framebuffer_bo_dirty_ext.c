
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {scalar_t__ active_display_unit; } ;
struct drm_framebuffer {int dev; } ;
struct drm_file {int dummy; } ;
struct drm_clip_rect {int dummy; } ;


 int drm_atomic_helper_dirtyfb (struct drm_framebuffer*,struct drm_file*,unsigned int,unsigned int,struct drm_clip_rect*,unsigned int) ;
 scalar_t__ vmw_du_legacy ;
 int vmw_framebuffer_bo_dirty (struct drm_framebuffer*,struct drm_file*,unsigned int,unsigned int,struct drm_clip_rect*,unsigned int) ;
 struct vmw_private* vmw_priv (int ) ;

__attribute__((used)) static int vmw_framebuffer_bo_dirty_ext(struct drm_framebuffer *framebuffer,
     struct drm_file *file_priv,
     unsigned int flags, unsigned int color,
     struct drm_clip_rect *clips,
     unsigned int num_clips)
{
 struct vmw_private *dev_priv = vmw_priv(framebuffer->dev);

 if (dev_priv->active_display_unit == vmw_du_legacy)
  return vmw_framebuffer_bo_dirty(framebuffer, file_priv, flags,
      color, clips, num_clips);

 return drm_atomic_helper_dirtyfb(framebuffer, file_priv, flags, color,
      clips, num_clips);
}
