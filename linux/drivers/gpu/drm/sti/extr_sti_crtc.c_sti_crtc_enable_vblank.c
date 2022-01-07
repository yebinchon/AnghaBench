
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_vtg {int dummy; } ;
struct sti_private {struct sti_compositor* compo; } ;
struct sti_compositor {struct sti_vtg** vtg; TYPE_1__** mixer; struct notifier_block* vtg_vblank_nb; } ;
struct notifier_block {int dummy; } ;
struct drm_device {struct sti_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {struct drm_crtc drm_crtc; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 scalar_t__ sti_vtg_register_client (struct sti_vtg*,struct notifier_block*,struct drm_crtc*) ;

int sti_crtc_enable_vblank(struct drm_device *dev, unsigned int pipe)
{
 struct sti_private *dev_priv = dev->dev_private;
 struct sti_compositor *compo = dev_priv->compo;
 struct notifier_block *vtg_vblank_nb = &compo->vtg_vblank_nb[pipe];
 struct drm_crtc *crtc = &compo->mixer[pipe]->drm_crtc;
 struct sti_vtg *vtg = compo->vtg[pipe];

 DRM_DEBUG_DRIVER("\n");

 if (sti_vtg_register_client(vtg, vtg_vblank_nb, crtc)) {
  DRM_ERROR("Cannot register VTG notifier\n");
  return -EINVAL;
 }

 return 0;
}
