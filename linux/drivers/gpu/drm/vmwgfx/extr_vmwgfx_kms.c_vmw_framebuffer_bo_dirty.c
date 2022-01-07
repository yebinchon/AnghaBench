
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int active_display_unit; int dev; int reservation_sem; } ;
struct vmw_framebuffer_bo {int base; } ;
struct drm_framebuffer {int height; int width; int dev; } ;
struct drm_file {int dummy; } ;
struct drm_clip_rect {int y2; int x2; scalar_t__ y1; scalar_t__ x1; } ;


 unsigned int DRM_MODE_FB_DIRTY_ANNOTATE_COPY ;
 int EINVAL ;
 int WARN_ONCE (int,char*) ;
 int drm_modeset_lock_all (int ) ;
 int drm_modeset_unlock_all (int ) ;
 int ttm_read_lock (int *,int) ;
 int ttm_read_unlock (int *) ;
 scalar_t__ unlikely (int) ;

 int vmw_fifo_flush (struct vmw_private*,int) ;
 struct vmw_framebuffer_bo* vmw_framebuffer_to_vfbd (struct drm_framebuffer*) ;
 int vmw_kms_ldu_do_bo_dirty (struct vmw_private*,int *,int ,int ,struct drm_clip_rect*,unsigned int,int) ;
 struct vmw_private* vmw_priv (int ) ;

__attribute__((used)) static int vmw_framebuffer_bo_dirty(struct drm_framebuffer *framebuffer,
        struct drm_file *file_priv,
        unsigned int flags, unsigned int color,
        struct drm_clip_rect *clips,
        unsigned int num_clips)
{
 struct vmw_private *dev_priv = vmw_priv(framebuffer->dev);
 struct vmw_framebuffer_bo *vfbd =
  vmw_framebuffer_to_vfbd(framebuffer);
 struct drm_clip_rect norect;
 int ret, increment = 1;

 drm_modeset_lock_all(dev_priv->dev);

 ret = ttm_read_lock(&dev_priv->reservation_sem, 1);
 if (unlikely(ret != 0)) {
  drm_modeset_unlock_all(dev_priv->dev);
  return ret;
 }

 if (!num_clips) {
  num_clips = 1;
  clips = &norect;
  norect.x1 = norect.y1 = 0;
  norect.x2 = framebuffer->width;
  norect.y2 = framebuffer->height;
 } else if (flags & DRM_MODE_FB_DIRTY_ANNOTATE_COPY) {
  num_clips /= 2;
  increment = 2;
 }

 switch (dev_priv->active_display_unit) {
 case 128:
  ret = vmw_kms_ldu_do_bo_dirty(dev_priv, &vfbd->base, 0, 0,
           clips, num_clips, increment);
  break;
 default:
  ret = -EINVAL;
  WARN_ONCE(1, "Dirty called with invalid display system.\n");
  break;
 }

 vmw_fifo_flush(dev_priv, 0);
 ttm_read_unlock(&dev_priv->reservation_sem);

 drm_modeset_unlock_all(dev_priv->dev);

 return ret;
}
