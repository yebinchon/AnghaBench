
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidraw {int minor; } ;
struct hiddev {int minor; } ;
struct hid_device {int quirks; int bus; int claimed; unsigned int maxcollection; int version; int phys; int name; int dev; struct hid_collection* collection; scalar_t__ hidraw; scalar_t__ hiddev; int (* ff_init ) (struct hid_device*) ;TYPE_1__* driver; int (* hiddev_connect ) (struct hid_device*,unsigned int) ;} ;
struct hid_collection {scalar_t__ type; int usage; } ;
struct TYPE_2__ {int raw_event; } ;


 int ARRAY_SIZE (char const**) ;



 int ENODEV ;
 int HID_CLAIMED_DRIVER ;
 int HID_CLAIMED_HIDDEV ;
 int HID_CLAIMED_HIDRAW ;
 int HID_CLAIMED_INPUT ;
 scalar_t__ HID_COLLECTION_APPLICATION ;
 unsigned int HID_CONNECT_DRIVER ;
 unsigned int HID_CONNECT_FF ;
 unsigned int HID_CONNECT_HIDDEV ;
 unsigned int HID_CONNECT_HIDDEV_FORCE ;
 unsigned int HID_CONNECT_HIDINPUT ;
 unsigned int HID_CONNECT_HIDINPUT_FORCE ;
 unsigned int HID_CONNECT_HIDRAW ;
 int HID_QUIRK_HIDDEV_FORCE ;
 int HID_QUIRK_HIDINPUT_FORCE ;
 int HID_UP_GENDESK ;
 int HID_USAGE_PAGE ;
 int dev_attr_country ;
 int device_create_file (int *,int *) ;
 int hid_err (struct hid_device*,char*) ;
 scalar_t__ hid_hiddev (struct hid_device*) ;
 int hid_info (struct hid_device*,char*,char*,char const*,int,int,char const*,int ,int ) ;
 int hid_warn (struct hid_device*,char*,int) ;
 int hidinput_connect (struct hid_device*,unsigned int) ;
 int hidraw_connect (struct hid_device*) ;
 scalar_t__ sprintf (char*,char*,...) ;
 int stub1 (struct hid_device*,unsigned int) ;
 int stub2 (struct hid_device*) ;

int hid_connect(struct hid_device *hdev, unsigned int connect_mask)
{
 static const char *types[] = { "Device", "Pointer", "Mouse", "Device",
  "Joystick", "Gamepad", "Keyboard", "Keypad",
  "Multi-Axis Controller"
 };
 const char *type, *bus;
 char buf[64] = "";
 unsigned int i;
 int len;
 int ret;

 if (hdev->quirks & HID_QUIRK_HIDDEV_FORCE)
  connect_mask |= (HID_CONNECT_HIDDEV_FORCE | HID_CONNECT_HIDDEV);
 if (hdev->quirks & HID_QUIRK_HIDINPUT_FORCE)
  connect_mask |= HID_CONNECT_HIDINPUT_FORCE;
 if (hdev->bus != 128)
  connect_mask &= ~HID_CONNECT_HIDDEV;
 if (hid_hiddev(hdev))
  connect_mask |= HID_CONNECT_HIDDEV_FORCE;

 if ((connect_mask & HID_CONNECT_HIDINPUT) && !hidinput_connect(hdev,
    connect_mask & HID_CONNECT_HIDINPUT_FORCE))
  hdev->claimed |= HID_CLAIMED_INPUT;

 if ((connect_mask & HID_CONNECT_HIDDEV) && hdev->hiddev_connect &&
   !hdev->hiddev_connect(hdev,
    connect_mask & HID_CONNECT_HIDDEV_FORCE))
  hdev->claimed |= HID_CLAIMED_HIDDEV;
 if ((connect_mask & HID_CONNECT_HIDRAW) && !hidraw_connect(hdev))
  hdev->claimed |= HID_CLAIMED_HIDRAW;

 if (connect_mask & HID_CONNECT_DRIVER)
  hdev->claimed |= HID_CLAIMED_DRIVER;



 if (!hdev->claimed && !hdev->driver->raw_event) {
  hid_err(hdev, "device has no listeners, quitting\n");
  return -ENODEV;
 }

 if ((hdev->claimed & HID_CLAIMED_INPUT) &&
   (connect_mask & HID_CONNECT_FF) && hdev->ff_init)
  hdev->ff_init(hdev);

 len = 0;
 if (hdev->claimed & HID_CLAIMED_INPUT)
  len += sprintf(buf + len, "input");
 if (hdev->claimed & HID_CLAIMED_HIDDEV)
  len += sprintf(buf + len, "%shiddev%d", len ? "," : "",
    ((struct hiddev *)hdev->hiddev)->minor);
 if (hdev->claimed & HID_CLAIMED_HIDRAW)
  len += sprintf(buf + len, "%shidraw%d", len ? "," : "",
    ((struct hidraw *)hdev->hidraw)->minor);

 type = "Device";
 for (i = 0; i < hdev->maxcollection; i++) {
  struct hid_collection *col = &hdev->collection[i];
  if (col->type == HID_COLLECTION_APPLICATION &&
     (col->usage & HID_USAGE_PAGE) == HID_UP_GENDESK &&
     (col->usage & 0xffff) < ARRAY_SIZE(types)) {
   type = types[col->usage & 0xffff];
   break;
  }
 }

 switch (hdev->bus) {
 case 128:
  bus = "USB";
  break;
 case 130:
  bus = "BLUETOOTH";
  break;
 case 129:
  bus = "I2C";
  break;
 default:
  bus = "<UNKNOWN>";
 }

 ret = device_create_file(&hdev->dev, &dev_attr_country);
 if (ret)
  hid_warn(hdev,
    "can't create sysfs country code attribute err: %d\n", ret);

 hid_info(hdev, "%s: %s HID v%x.%02x %s [%s] on %s\n",
   buf, bus, hdev->version >> 8, hdev->version & 0xff,
   type, hdev->name, hdev->phys);

 return 0;
}
