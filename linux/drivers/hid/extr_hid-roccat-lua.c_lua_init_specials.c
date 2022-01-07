
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct lua_device {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct hid_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int hid_err (struct hid_device*,char*) ;
 int hid_set_drvdata (struct hid_device*,struct lua_device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct lua_device*) ;
 struct lua_device* kzalloc (int,int ) ;
 int lua_create_sysfs_attributes (struct usb_interface*) ;
 int lua_init_lua_device_struct (struct usb_device*,struct lua_device*) ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static int lua_init_specials(struct hid_device *hdev)
{
 struct usb_interface *intf = to_usb_interface(hdev->dev.parent);
 struct usb_device *usb_dev = interface_to_usbdev(intf);
 struct lua_device *lua;
 int retval;

 lua = kzalloc(sizeof(*lua), GFP_KERNEL);
 if (!lua) {
  hid_err(hdev, "can't alloc device descriptor\n");
  return -ENOMEM;
 }
 hid_set_drvdata(hdev, lua);

 retval = lua_init_lua_device_struct(usb_dev, lua);
 if (retval) {
  hid_err(hdev, "couldn't init struct lua_device\n");
  goto exit;
 }

 retval = lua_create_sysfs_attributes(intf);
 if (retval) {
  hid_err(hdev, "cannot create sysfs files\n");
  goto exit;
 }

 return 0;
exit:
 kfree(lua);
 return retval;
}
