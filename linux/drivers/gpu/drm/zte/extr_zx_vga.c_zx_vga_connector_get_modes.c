
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zx_vga {int connected; scalar_t__ mmio; TYPE_1__* ddc; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int adap; } ;


 scalar_t__ VGA_AUTO_DETECT_SEL ;
 int VGA_DETECT_SEL_HAS_DEVICE ;
 int VGA_DETECT_SEL_NO_DEVICE ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int *) ;
 int kfree (struct edid*) ;
 struct zx_vga* to_zx_vga (struct drm_connector*) ;
 int zx_writel (scalar_t__,int ) ;

__attribute__((used)) static int zx_vga_connector_get_modes(struct drm_connector *connector)
{
 struct zx_vga *vga = to_zx_vga(connector);
 struct edid *edid;
 int ret;





 zx_writel(vga->mmio + VGA_AUTO_DETECT_SEL, 0);

 edid = drm_get_edid(connector, &vga->ddc->adap);
 if (!edid) {






  zx_writel(vga->mmio + VGA_AUTO_DETECT_SEL,
     VGA_DETECT_SEL_NO_DEVICE);
  vga->connected = 0;
  return 0;
 }





 zx_writel(vga->mmio + VGA_AUTO_DETECT_SEL, VGA_DETECT_SEL_HAS_DEVICE);

 drm_connector_update_edid_property(connector, edid);
 ret = drm_add_edid_modes(connector, edid);
 kfree(edid);

 return ret;
}
