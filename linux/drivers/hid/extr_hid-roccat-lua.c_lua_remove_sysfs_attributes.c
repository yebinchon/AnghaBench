
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;


 int lua_control_attr ;
 int sysfs_remove_bin_file (int *,int *) ;

__attribute__((used)) static void lua_remove_sysfs_attributes(struct usb_interface *intf)
{
 sysfs_remove_bin_file(&intf->dev.kobj, &lua_control_attr);
}
