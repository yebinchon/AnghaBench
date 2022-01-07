
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumb_vga {scalar_t__ vdd; } ;
struct drm_bridge {int dummy; } ;


 struct dumb_vga* drm_bridge_to_dumb_vga (struct drm_bridge*) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static void dumb_vga_disable(struct drm_bridge *bridge)
{
 struct dumb_vga *vga = drm_bridge_to_dumb_vga(bridge);

 if (vga->vdd)
  regulator_disable(vga->vdd);
}
