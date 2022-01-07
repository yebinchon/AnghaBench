
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hid_report {int maxfield; TYPE_2__** field; } ;
struct hid_device {TYPE_1__* report_enum; } ;
struct TYPE_4__ {unsigned int application; } ;
struct TYPE_3__ {struct hid_report** report_id_hash; } ;


 unsigned int HID_UP_MSVENDOR ;
 unsigned int HID_USAGE_PAGE ;

__attribute__((used)) static int rmi_check_valid_report_id(struct hid_device *hdev, unsigned type,
  unsigned id, struct hid_report **report)
{
 int i;

 *report = hdev->report_enum[type].report_id_hash[id];
 if (*report) {
  for (i = 0; i < (*report)->maxfield; i++) {
   unsigned app = (*report)->field[i]->application;
   if ((app & HID_USAGE_PAGE) >= HID_UP_MSVENDOR)
    return 1;
  }
 }

 return 0;
}
