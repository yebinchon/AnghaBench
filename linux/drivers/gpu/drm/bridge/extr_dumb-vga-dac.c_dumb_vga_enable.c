
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumb_vga {scalar_t__ vdd; } ;
struct drm_bridge {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 struct dumb_vga* drm_bridge_to_dumb_vga (struct drm_bridge*) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static void dumb_vga_enable(struct drm_bridge *bridge)
{
 struct dumb_vga *vga = drm_bridge_to_dumb_vga(bridge);
 int ret = 0;

 if (vga->vdd)
  ret = regulator_enable(vga->vdd);

 if (ret)
  DRM_ERROR("Failed to enable vdd regulator: %d\n", ret);
}
