
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct magicmouse_sc {int ntouches; struct input_dev* input; } ;
struct TYPE_2__ {scalar_t__ product; } ;
struct input_dev {TYPE_1__ id; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;


 int BTN_MOUSE ;


 int REL_X ;
 int REL_Y ;



 scalar_t__ USB_DEVICE_ID_APPLE_MAGICMOUSE ;
 scalar_t__ USB_DEVICE_ID_APPLE_MAGICTRACKPAD2 ;
 struct magicmouse_sc* hid_get_drvdata (struct hid_device*) ;
 int hid_warn (struct hid_device*,char*,int) ;
 int input_mt_report_pointer_emulation (struct input_dev*,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int magicmouse_emit_buttons (struct magicmouse_sc*,int) ;
 int magicmouse_emit_touch (struct magicmouse_sc*,int,int*) ;

__attribute__((used)) static int magicmouse_raw_event(struct hid_device *hdev,
  struct hid_report *report, u8 *data, int size)
{
 struct magicmouse_sc *msc = hid_get_drvdata(hdev);
 struct input_dev *input = msc->input;
 int x = 0, y = 0, ii, clicks = 0, npoints;

 switch (data[0]) {
 case 128:
 case 130:

  if (size < 4 || ((size - 4) % 9) != 0)
   return 0;
  npoints = (size - 4) / 9;
  if (npoints > 15) {
   hid_warn(hdev, "invalid size value (%d) for TRACKPAD_REPORT_ID\n",
     size);
   return 0;
  }
  msc->ntouches = 0;
  for (ii = 0; ii < npoints; ii++)
   magicmouse_emit_touch(msc, ii, data + ii * 9 + 4);

  clicks = data[1];






  break;
 case 129:

  if (size < 12 || ((size - 12) % 9) != 0)
   return 0;
  npoints = (size - 12) / 9;
  if (npoints > 15) {
   hid_warn(hdev, "invalid size value (%d) for TRACKPAD2_USB_REPORT_ID\n",
     size);
   return 0;
  }
  msc->ntouches = 0;
  for (ii = 0; ii < npoints; ii++)
   magicmouse_emit_touch(msc, ii, data + ii * 9 + 12);

  clicks = data[1];
  break;
 case 131:

  if (size < 6 || ((size - 6) % 8) != 0)
   return 0;
  npoints = (size - 6) / 8;
  if (npoints > 15) {
   hid_warn(hdev, "invalid size value (%d) for MOUSE_REPORT_ID\n",
     size);
   return 0;
  }
  msc->ntouches = 0;
  for (ii = 0; ii < npoints; ii++)
   magicmouse_emit_touch(msc, ii, data + ii * 8 + 6);





  x = (int)(((data[3] & 0x0c) << 28) | (data[1] << 22)) >> 22;
  y = (int)(((data[3] & 0x30) << 26) | (data[2] << 22)) >> 22;
  clicks = data[3];






  break;
 case 132:



  magicmouse_raw_event(hdev, report, data + 2, data[1]);
  magicmouse_raw_event(hdev, report, data + 2 + data[1],
   size - 2 - data[1]);
  break;
 default:
  return 0;
 }

 if (input->id.product == USB_DEVICE_ID_APPLE_MAGICMOUSE) {
  magicmouse_emit_buttons(msc, clicks & 3);
  input_report_rel(input, REL_X, x);
  input_report_rel(input, REL_Y, y);
 } else if (input->id.product == USB_DEVICE_ID_APPLE_MAGICTRACKPAD2) {
  input_mt_sync_frame(input);
  input_report_key(input, BTN_MOUSE, clicks & 1);
 } else {
  input_report_key(input, BTN_MOUSE, clicks & 1);
  input_mt_report_pointer_emulation(input, 1);
 }

 input_sync(input);
 return 1;
}
