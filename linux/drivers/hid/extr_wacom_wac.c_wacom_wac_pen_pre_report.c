
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {int is_invalid_bt_frame; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;


 struct wacom* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static void wacom_wac_pen_pre_report(struct hid_device *hdev,
  struct hid_report *report)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;

 wacom_wac->is_invalid_bt_frame = 0;
 return;
}
