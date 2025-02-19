
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct repaper_epd {int partial; int cleared; scalar_t__* current_frame; scalar_t__ pre_border_byte; int factored_stage_time; int enabled; } ;
struct drm_rect {int x2; int y2; scalar_t__ y1; scalar_t__ x1; } ;
struct TYPE_3__ {struct dma_buf_attachment* import_attach; } ;
struct drm_gem_cma_object {int vaddr; TYPE_1__ base; } ;
struct TYPE_4__ {int id; } ;
struct drm_framebuffer {int width; int height; TYPE_2__ base; int dev; } ;
struct dma_buf_attachment {int dmabuf; } ;


 int DMA_FROM_DEVICE ;
 int DRM_DEBUG (char*,int ,int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REPAPER_COMPENSATE ;
 int REPAPER_INVERSE ;
 int REPAPER_NORMAL ;
 int REPAPER_WHITE ;
 int dma_buf_begin_cpu_access (int ,int ) ;
 int dma_buf_end_cpu_access (int ,int ) ;
 int drm_dev_enter (int ,int*) ;
 int drm_dev_exit (int) ;
 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int ) ;
 int drm_fb_xrgb8888_to_gray8 (scalar_t__*,int ,struct drm_framebuffer*,struct drm_rect*) ;
 struct repaper_epd* drm_to_epd (int ) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc_array (int,int,int ) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int repaper_frame_data_repeat (struct repaper_epd*,scalar_t__*,scalar_t__*,int ) ;
 int repaper_frame_fixed_repeat (struct repaper_epd*,int,int ) ;
 int repaper_get_temperature (struct repaper_epd*) ;
 int repaper_gray8_to_mono_reversed (scalar_t__*,int,int) ;

__attribute__((used)) static int repaper_fb_dirty(struct drm_framebuffer *fb)
{
 struct drm_gem_cma_object *cma_obj = drm_fb_cma_get_gem_obj(fb, 0);
 struct dma_buf_attachment *import_attach = cma_obj->base.import_attach;
 struct repaper_epd *epd = drm_to_epd(fb->dev);
 struct drm_rect clip;
 int idx, ret = 0;
 u8 *buf = ((void*)0);

 if (!epd->enabled)
  return 0;

 if (!drm_dev_enter(fb->dev, &idx))
  return -ENODEV;


 clip.x1 = 0;
 clip.x2 = fb->width;
 clip.y1 = 0;
 clip.y2 = fb->height;

 repaper_get_temperature(epd);

 DRM_DEBUG("Flushing [FB:%d] st=%ums\n", fb->base.id,
    epd->factored_stage_time);

 buf = kmalloc_array(fb->width, fb->height, GFP_KERNEL);
 if (!buf) {
  ret = -ENOMEM;
  goto out_exit;
 }

 if (import_attach) {
  ret = dma_buf_begin_cpu_access(import_attach->dmabuf,
            DMA_FROM_DEVICE);
  if (ret)
   goto out_free;
 }

 drm_fb_xrgb8888_to_gray8(buf, cma_obj->vaddr, fb, &clip);

 if (import_attach) {
  ret = dma_buf_end_cpu_access(import_attach->dmabuf,
          DMA_FROM_DEVICE);
  if (ret)
   goto out_free;
 }

 repaper_gray8_to_mono_reversed(buf, fb->width, fb->height);

 if (epd->partial) {
  repaper_frame_data_repeat(epd, buf, epd->current_frame,
       REPAPER_NORMAL);
 } else if (epd->cleared) {
  repaper_frame_data_repeat(epd, epd->current_frame, ((void*)0),
       REPAPER_COMPENSATE);
  repaper_frame_data_repeat(epd, epd->current_frame, ((void*)0),
       REPAPER_WHITE);
  repaper_frame_data_repeat(epd, buf, ((void*)0), REPAPER_INVERSE);
  repaper_frame_data_repeat(epd, buf, ((void*)0), REPAPER_NORMAL);

  epd->partial = 1;
 } else {

  repaper_frame_fixed_repeat(epd, 0xff, REPAPER_COMPENSATE);
  repaper_frame_fixed_repeat(epd, 0xff, REPAPER_WHITE);
  repaper_frame_fixed_repeat(epd, 0xaa, REPAPER_INVERSE);
  repaper_frame_fixed_repeat(epd, 0xaa, REPAPER_NORMAL);


  repaper_frame_fixed_repeat(epd, 0xaa, REPAPER_COMPENSATE);
  repaper_frame_fixed_repeat(epd, 0xaa, REPAPER_WHITE);
  repaper_frame_data_repeat(epd, buf, ((void*)0), REPAPER_INVERSE);
  repaper_frame_data_repeat(epd, buf, ((void*)0), REPAPER_NORMAL);

  epd->cleared = 1;
  epd->partial = 1;
 }

 memcpy(epd->current_frame, buf, fb->width * fb->height / 8);





 if (epd->pre_border_byte) {
  unsigned int x;

  for (x = 0; x < (fb->width / 8); x++)
   if (buf[x + (fb->width * (fb->height - 1) / 8)]) {
    repaper_frame_data_repeat(epd, buf,
         epd->current_frame,
         REPAPER_NORMAL);
    break;
   }
 }

out_free:
 kfree(buf);
out_exit:
 drm_dev_exit(idx);

 return ret;
}
