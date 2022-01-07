
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_device {int input; int vertical_wheel_counter; } ;
struct hid_device {int dummy; } ;


 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int EINVAL ;
 int M560_MOUSE_BTN_LEFT ;
 int M560_MOUSE_BTN_RIGHT ;
 int M560_MOUSE_BTN_WHEEL_LEFT ;
 int M560_MOUSE_BTN_WHEEL_RIGHT ;
 int M560_SUB_ID ;
 int REL_HWHEEL ;
 int REL_HWHEEL_HI_RES ;
 int REL_X ;
 int REL_Y ;
 int REPORT_ID_HIDPP_LONG ;
 int hid_err (struct hid_device*,char*) ;
 int hid_field_extract (struct hid_device*,int*,int,int) ;
 struct hidpp_device* hid_get_drvdata (struct hid_device*) ;
 int hid_snto32 (int,int) ;
 int hidpp_scroll_counter_handle_scroll (int ,int *,int) ;
 int input_report_key (int ,int ,int) ;
 int input_report_rel (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static int m560_raw_event(struct hid_device *hdev, u8 *data, int size)
{
 struct hidpp_device *hidpp = hid_get_drvdata(hdev);


 if (!hidpp->input) {
  hid_err(hdev, "error in parameter\n");
  return -EINVAL;
 }

 if (size < 7) {
  hid_err(hdev, "error in report\n");
  return 0;
 }

 if (data[0] == REPORT_ID_HIDPP_LONG &&
     data[2] == M560_SUB_ID && data[6] == 0x00) {
  switch (data[5]) {
  case 0xaf:
   input_report_key(hidpp->input, BTN_MIDDLE, 1);
   break;
  case 0xb0:
   input_report_key(hidpp->input, BTN_FORWARD, 1);
   break;
  case 0xae:
   input_report_key(hidpp->input, BTN_BACK, 1);
   break;
  case 0x00:
   input_report_key(hidpp->input, BTN_BACK, 0);
   input_report_key(hidpp->input, BTN_FORWARD, 0);
   input_report_key(hidpp->input, BTN_MIDDLE, 0);
   break;
  default:
   hid_err(hdev, "error in report\n");
   return 0;
  }
  input_sync(hidpp->input);

 } else if (data[0] == 0x02) {
  int v;

  input_report_key(hidpp->input, BTN_LEFT,
   !!(data[1] & M560_MOUSE_BTN_LEFT));
  input_report_key(hidpp->input, BTN_RIGHT,
   !!(data[1] & M560_MOUSE_BTN_RIGHT));

  if (data[1] & M560_MOUSE_BTN_WHEEL_LEFT) {
   input_report_rel(hidpp->input, REL_HWHEEL, -1);
   input_report_rel(hidpp->input, REL_HWHEEL_HI_RES,
      -120);
  } else if (data[1] & M560_MOUSE_BTN_WHEEL_RIGHT) {
   input_report_rel(hidpp->input, REL_HWHEEL, 1);
   input_report_rel(hidpp->input, REL_HWHEEL_HI_RES,
      120);
  }

  v = hid_snto32(hid_field_extract(hdev, data+3, 0, 12), 12);
  input_report_rel(hidpp->input, REL_X, v);

  v = hid_snto32(hid_field_extract(hdev, data+3, 12, 12), 12);
  input_report_rel(hidpp->input, REL_Y, v);

  v = hid_snto32(data[6], 8);
  if (v != 0)
   hidpp_scroll_counter_handle_scroll(hidpp->input,
     &hidpp->vertical_wheel_counter, v);

  input_sync(hidpp->input);
 }

 return 1;
}
