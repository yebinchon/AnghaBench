
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ inrange_state; int pad_input_event_flag; } ;
struct wacom_wac {TYPE_1__ hid_data; struct input_dev* pad_input; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct input_dev {int dummy; } ;
struct hid_report {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int ABS_MISC ;
 int EV_ABS ;
 int PAD_DEVICE_ID ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int input_event (struct input_dev*,int ,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void wacom_wac_pad_report(struct hid_device *hdev,
  struct hid_report *report, struct hid_field *field)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct input_dev *input = wacom_wac->pad_input;
 bool active = wacom_wac->hid_data.inrange_state != 0;


 if (wacom_wac->hid_data.pad_input_event_flag) {
  input_event(input, EV_ABS, ABS_MISC, active ? PAD_DEVICE_ID : 0);
  input_sync(input);
  if (!active)
   wacom_wac->hid_data.pad_input_event_flag = 0;
 }
}
