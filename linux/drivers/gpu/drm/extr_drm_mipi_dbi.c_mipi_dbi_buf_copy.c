
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_rect {int dummy; } ;
struct drm_gem_object {struct dma_buf_attachment* import_attach; } ;
struct drm_gem_cma_object {void* vaddr; } ;
struct drm_framebuffer {TYPE_2__* format; TYPE_1__* dev; } ;
struct drm_format_name_buf {int dummy; } ;
struct dma_buf_attachment {int dmabuf; } ;
struct TYPE_4__ {int format; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;


 int EINVAL ;
 int dev_err_once (int ,char*,int ) ;
 int dma_buf_begin_cpu_access (int ,int ) ;
 int dma_buf_end_cpu_access (int ,int ) ;
 int drm_fb_memcpy (void*,void*,struct drm_framebuffer*,struct drm_rect*) ;
 int drm_fb_swab16 (void*,void*,struct drm_framebuffer*,struct drm_rect*) ;
 int drm_fb_xrgb8888_to_rgb565 (void*,void*,struct drm_framebuffer*,struct drm_rect*,int) ;
 struct drm_gem_object* drm_gem_fb_get_obj (struct drm_framebuffer*,int ) ;
 int drm_get_format_name (int,struct drm_format_name_buf*) ;
 struct drm_gem_cma_object* to_drm_gem_cma_obj (struct drm_gem_object*) ;

int mipi_dbi_buf_copy(void *dst, struct drm_framebuffer *fb,
        struct drm_rect *clip, bool swap)
{
 struct drm_gem_object *gem = drm_gem_fb_get_obj(fb, 0);
 struct drm_gem_cma_object *cma_obj = to_drm_gem_cma_obj(gem);
 struct dma_buf_attachment *import_attach = gem->import_attach;
 struct drm_format_name_buf format_name;
 void *src = cma_obj->vaddr;
 int ret = 0;

 if (import_attach) {
  ret = dma_buf_begin_cpu_access(import_attach->dmabuf,
            DMA_FROM_DEVICE);
  if (ret)
   return ret;
 }

 switch (fb->format->format) {
 case 129:
  if (swap)
   drm_fb_swab16(dst, src, fb, clip);
  else
   drm_fb_memcpy(dst, src, fb, clip);
  break;
 case 128:
  drm_fb_xrgb8888_to_rgb565(dst, src, fb, clip, swap);
  break;
 default:
  dev_err_once(fb->dev->dev, "Format is not supported: %s\n",
        drm_get_format_name(fb->format->format,
       &format_name));
  return -EINVAL;
 }

 if (import_attach)
  ret = dma_buf_end_cpu_access(import_attach->dmabuf,
          DMA_FROM_DEVICE);
 return ret;
}
