
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_gem {scalar_t__ dma_addr; } ;
struct drm_framebuffer {scalar_t__* offsets; int * obj; } ;
typedef scalar_t__ dma_addr_t ;


 int MAX_FB_BUFFER ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct exynos_drm_gem* to_exynos_gem (int ) ;

dma_addr_t exynos_drm_fb_dma_addr(struct drm_framebuffer *fb, int index)
{
 struct exynos_drm_gem *exynos_gem;

 if (WARN_ON_ONCE(index >= MAX_FB_BUFFER))
  return 0;

 exynos_gem = to_exynos_gem(fb->obj[index]);
 return exynos_gem->dma_addr + fb->offsets[index];
}
