
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hid_data {size_t inputmode; size_t inputmode_index; } ;
struct TYPE_4__ {struct hid_data hid_data; } ;
struct wacom {TYPE_2__ wacom_wac; } ;
struct hid_report_enum {struct hid_report** report_id_hash; } ;
struct hid_report {TYPE_1__** field; } ;
struct hid_device {struct hid_report_enum* report_enum; } ;
struct TYPE_3__ {int* value; } ;


 size_t HID_FEATURE_REPORT ;
 int HID_REQ_SET_REPORT ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_request (struct hid_device*,struct hid_report*,int ) ;

__attribute__((used)) static int wacom_hid_set_device_mode(struct hid_device *hdev)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct hid_data *hid_data = &wacom->wacom_wac.hid_data;
 struct hid_report *r;
 struct hid_report_enum *re;

 if (hid_data->inputmode < 0)
  return 0;

 re = &(hdev->report_enum[HID_FEATURE_REPORT]);
 r = re->report_id_hash[hid_data->inputmode];
 if (r) {
  r->field[0]->value[hid_data->inputmode_index] = 2;
  hid_hw_request(hdev, r, HID_REQ_SET_REPORT);
 }
 return 0;
}
