
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yealink_dev {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct usb_interface {TYPE_1__ dev; } ;


 int down_write (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int sysfs_rwsema ;
 int up_write (int *) ;
 int usb_cleanup (struct yealink_dev*,int ) ;
 struct yealink_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int yld_attr_group ;

__attribute__((used)) static void usb_disconnect(struct usb_interface *intf)
{
 struct yealink_dev *yld;

 down_write(&sysfs_rwsema);
 yld = usb_get_intfdata(intf);
 sysfs_remove_group(&intf->dev.kobj, &yld_attr_group);
 usb_set_intfdata(intf, ((void*)0));
 up_write(&sysfs_rwsema);

 usb_cleanup(yld, 0);
}
