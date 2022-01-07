
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_report {scalar_t__ type; int id; } ;
struct hid_device {scalar_t__ product; } ;
typedef int s8 ;


 int ARRAY_SIZE (int const*) ;
 scalar_t__ HID_INPUT_REPORT ;
 scalar_t__ USB_DEVICE_ID_WALTOP_SIRIUS_BATTERY_FREE_TABLET ;

__attribute__((used)) static int waltop_raw_event(struct hid_device *hdev, struct hid_report *report,
       u8 *data, int size)
{

 if (report->type == HID_INPUT_REPORT && report->id == 16 && size >= 8) {






  if ((data[1] & 0xF) > 1) {

   data[6] = 0;
   data[7] = 0;
  }
 }


 if (hdev->product == USB_DEVICE_ID_WALTOP_SIRIUS_BATTERY_FREE_TABLET &&
     report->type == HID_INPUT_REPORT &&
     report->id == 16 &&
     size == 10) {







  static const s8 tilt_to_radians[] = {
   0, 5, 10, 14, 19, 24, 29, 34, 40, 45,
   50, 56, 62, 68, 74, 81, 88, 96, 105
  };

  s8 tilt_x = (s8)data[8];
  s8 tilt_y = (s8)data[9];
  s8 sign_x = tilt_x >= 0 ? 1 : -1;
  s8 sign_y = tilt_y >= 0 ? 1 : -1;

  tilt_x *= sign_x;
  tilt_y *= sign_y;






  sign_y *= -1;





  if (tilt_x > ARRAY_SIZE(tilt_to_radians) - 1)
   tilt_x = ARRAY_SIZE(tilt_to_radians) - 1;
  if (tilt_y > ARRAY_SIZE(tilt_to_radians) - 1)
   tilt_y = ARRAY_SIZE(tilt_to_radians) - 1;

  data[8] = tilt_to_radians[tilt_x] * sign_x;
  data[9] = tilt_to_radians[tilt_y] * sign_y;
 }

 return 0;
}
