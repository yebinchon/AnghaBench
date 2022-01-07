
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_rect {int dummy; } ;
struct TYPE_2__ {struct dma_buf_attachment* import_attach; } ;
struct drm_gem_cma_object {void* vaddr; TYPE_1__ base; } ;
struct drm_framebuffer {int dummy; } ;
struct dma_buf_attachment {int dmabuf; } ;


 int DMA_FROM_DEVICE ;
 int dma_buf_begin_cpu_access (int ,int ) ;
 int dma_buf_end_cpu_access (int ,int ) ;
 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int ) ;
 int st7586_xrgb8888_to_gray332 (void*,void*,struct drm_framebuffer*,struct drm_rect*) ;

__attribute__((used)) static int st7586_buf_copy(void *dst, struct drm_framebuffer *fb,
      struct drm_rect *clip)
{
 struct drm_gem_cma_object *cma_obj = drm_fb_cma_get_gem_obj(fb, 0);
 struct dma_buf_attachment *import_attach = cma_obj->base.import_attach;
 void *src = cma_obj->vaddr;
 int ret = 0;

 if (import_attach) {
  ret = dma_buf_begin_cpu_access(import_attach->dmabuf,
            DMA_FROM_DEVICE);
  if (ret)
   return ret;
 }

 st7586_xrgb8888_to_gray332(dst, src, fb, clip);

 if (import_attach)
  ret = dma_buf_end_cpu_access(import_attach->dmabuf,
          DMA_FROM_DEVICE);

 return ret;
}
