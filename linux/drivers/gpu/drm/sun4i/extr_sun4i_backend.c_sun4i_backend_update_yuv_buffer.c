
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regs; } ;
struct sun4i_backend {TYPE_1__ engine; } ;
struct drm_framebuffer {int* pitches; } ;
typedef int dma_addr_t ;


 int DRM_DEBUG_DRIVER (char*,...) ;
 int SUN4I_BACKEND_IYUVADD_REG (int ) ;
 int SUN4I_BACKEND_IYUVLINEWIDTH_REG (int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int sun4i_backend_update_yuv_buffer(struct sun4i_backend *backend,
        struct drm_framebuffer *fb,
        dma_addr_t paddr)
{

 DRM_DEBUG_DRIVER("Setting packed YUV buffer address to %pad\n", &paddr);
 regmap_write(backend->engine.regs, SUN4I_BACKEND_IYUVADD_REG(0), paddr);

 DRM_DEBUG_DRIVER("Layer line width: %d bits\n", fb->pitches[0] * 8);
 regmap_write(backend->engine.regs, SUN4I_BACKEND_IYUVLINEWIDTH_REG(0),
       fb->pitches[0] * 8);

 return 0;
}
