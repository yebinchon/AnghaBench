
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct lua_device {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct hid_device {TYPE_1__ dev; } ;


 struct lua_device* hid_get_drvdata (struct hid_device*) ;
 int kfree (struct lua_device*) ;
 int lua_remove_sysfs_attributes (struct usb_interface*) ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static void lua_remove_specials(struct hid_device *hdev)
{
 struct usb_interface *intf = to_usb_interface(hdev->dev.parent);
 struct lua_device *lua;

 lua_remove_sysfs_attributes(intf);

 lua = hid_get_drvdata(hdev);
 kfree(lua);
}
