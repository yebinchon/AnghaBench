
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int mdfld_disable_crtc (struct drm_device*,int) ;
 int mdfld_save_display_registers (struct drm_device*,int) ;

__attribute__((used)) static int mdfld_save_registers(struct drm_device *dev)
{

 mdfld_save_display_registers(dev, 0);
 mdfld_save_display_registers(dev, 2);
 mdfld_disable_crtc(dev, 0);
 mdfld_disable_crtc(dev, 2);

 return 0;
}
