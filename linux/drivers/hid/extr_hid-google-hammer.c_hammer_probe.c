
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int dummy; } ;
struct hid_device {scalar_t__ product; int quirks; } ;


 int HID_CONNECT_DEFAULT ;
 int HID_QUIRK_ALWAYS_POLL ;
 scalar_t__ USB_DEVICE_ID_GOOGLE_WHISKERS ;
 scalar_t__ hammer_has_backlight_control (struct hid_device*) ;
 scalar_t__ hammer_is_keyboard_interface (struct hid_device*) ;
 int hammer_register_leds (struct hid_device*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_parse (struct hid_device*) ;
 int hid_warn (struct hid_device*,char*,int) ;

__attribute__((used)) static int hammer_probe(struct hid_device *hdev,
   const struct hid_device_id *id)
{
 int error;







 if (hdev->product == USB_DEVICE_ID_GOOGLE_WHISKERS &&
   hammer_is_keyboard_interface(hdev))
  hdev->quirks |= HID_QUIRK_ALWAYS_POLL;

 error = hid_parse(hdev);
 if (error)
  return error;

 error = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
 if (error)
  return error;

 if (hammer_has_backlight_control(hdev)) {
  error = hammer_register_leds(hdev);
  if (error)
   hid_warn(hdev,
    "Failed to register keyboard backlight: %d\n",
    error);
 }

 return 0;
}
