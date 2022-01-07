
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct tilcdc_drm_private {int rev; } ;
struct drm_gem_cma_object {int paddr; } ;
struct drm_framebuffer {int* offsets; int* pitches; TYPE_1__* format; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;
struct TYPE_4__ {int vdisplay; } ;
struct drm_crtc {int y; int x; TYPE_2__ mode; struct drm_device* dev; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int* cpp; } ;


 int LCDC_DMA_FB_BASE_ADDR_0_REG ;
 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int ) ;
 int tilcdc_write64 (struct drm_device*,int ,int) ;

__attribute__((used)) static void set_scanout(struct drm_crtc *crtc, struct drm_framebuffer *fb)
{
 struct drm_device *dev = crtc->dev;
 struct tilcdc_drm_private *priv = dev->dev_private;
 struct drm_gem_cma_object *gem;
 dma_addr_t start, end;
 u64 dma_base_and_ceiling;

 gem = drm_fb_cma_get_gem_obj(fb, 0);

 start = gem->paddr + fb->offsets[0] +
  crtc->y * fb->pitches[0] +
  crtc->x * fb->format->cpp[0];

 end = start + (crtc->mode.vdisplay * fb->pitches[0]);






 if (priv->rev == 1)
  end -= 1;

 dma_base_and_ceiling = (u64)end << 32 | start;
 tilcdc_write64(dev, LCDC_DMA_FB_BASE_ADDR_0_REG, dma_base_and_ceiling);
}
