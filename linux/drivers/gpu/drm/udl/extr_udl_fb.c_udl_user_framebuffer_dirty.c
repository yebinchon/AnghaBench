
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udl_framebuffer {TYPE_3__* obj; int active_16; } ;
struct drm_framebuffer {int dev; } ;
struct drm_file {int dummy; } ;
struct drm_clip_rect {scalar_t__ y1; scalar_t__ y2; scalar_t__ x1; scalar_t__ x2; } ;
struct TYPE_5__ {TYPE_1__* import_attach; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct TYPE_4__ {int dmabuf; } ;


 int DMA_FROM_DEVICE ;
 int dma_buf_begin_cpu_access (int ,int ) ;
 int dma_buf_end_cpu_access (int ,int ) ;
 int drm_modeset_lock_all (int ) ;
 int drm_modeset_unlock_all (int ) ;
 struct udl_framebuffer* to_udl_fb (struct drm_framebuffer*) ;
 int udl_handle_damage (struct udl_framebuffer*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int udl_user_framebuffer_dirty(struct drm_framebuffer *fb,
          struct drm_file *file,
          unsigned flags, unsigned color,
          struct drm_clip_rect *clips,
          unsigned num_clips)
{
 struct udl_framebuffer *ufb = to_udl_fb(fb);
 int i;
 int ret = 0;

 drm_modeset_lock_all(fb->dev);

 if (!ufb->active_16)
  goto unlock;

 if (ufb->obj->base.import_attach) {
  ret = dma_buf_begin_cpu_access(ufb->obj->base.import_attach->dmabuf,
            DMA_FROM_DEVICE);
  if (ret)
   goto unlock;
 }

 for (i = 0; i < num_clips; i++) {
  ret = udl_handle_damage(ufb, clips[i].x1, clips[i].y1,
      clips[i].x2 - clips[i].x1,
      clips[i].y2 - clips[i].y1);
  if (ret)
   break;
 }

 if (ufb->obj->base.import_attach) {
  ret = dma_buf_end_cpu_access(ufb->obj->base.import_attach->dmabuf,
          DMA_FROM_DEVICE);
 }

 unlock:
 drm_modeset_unlock_all(fb->dev);

 return ret;
}
