
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u16 ;
struct vmw_private {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_crtc {int dev; } ;


 int DRM_DEBUG (char*,int,int,int,int) ;
 scalar_t__ SVGA_PALETTE_BASE ;
 struct vmw_private* vmw_priv (int ) ;
 int vmw_write (struct vmw_private*,scalar_t__,int) ;

int vmw_du_crtc_gamma_set(struct drm_crtc *crtc,
     u16 *r, u16 *g, u16 *b,
     uint32_t size,
     struct drm_modeset_acquire_ctx *ctx)
{
 struct vmw_private *dev_priv = vmw_priv(crtc->dev);
 int i;

 for (i = 0; i < size; i++) {
  DRM_DEBUG("%d r/g/b = 0x%04x / 0x%04x / 0x%04x\n", i,
     r[i], g[i], b[i]);
  vmw_write(dev_priv, SVGA_PALETTE_BASE + i * 3 + 0, r[i] >> 8);
  vmw_write(dev_priv, SVGA_PALETTE_BASE + i * 3 + 1, g[i] >> 8);
  vmw_write(dev_priv, SVGA_PALETTE_BASE + i * 3 + 2, b[i] >> 8);
 }

 return 0;
}
