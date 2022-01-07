
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int mdfld_restore_display_registers (struct drm_device*,int) ;

__attribute__((used)) static int mdfld_restore_registers(struct drm_device *dev)
{
 mdfld_restore_display_registers(dev, 2);
 mdfld_restore_display_registers(dev, 0);


 return 0;
}
