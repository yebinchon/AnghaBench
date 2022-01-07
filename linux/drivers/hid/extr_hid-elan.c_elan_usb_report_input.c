
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;
struct elan_drvdata {int* prev_report; struct input_dev* input; } ;


 int BIT (int) ;
 int BTN_LEFT ;
 int ELAN_MAX_FINGERS ;
 int ELAN_MT_FIRST_FINGER ;
 int ELAN_MT_SECOND_FINGER ;
 int ELAN_SINGLE_FINGER ;
 int elan_report_mt_slot (struct elan_drvdata*,int*,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static void elan_usb_report_input(struct elan_drvdata *drvdata, u8 *data)
{
 int i;
 struct input_dev *input = drvdata->input;
 if (data[0] == ELAN_SINGLE_FINGER) {
  for (i = 0; i < ELAN_MAX_FINGERS; i++) {
   if (data[2] & BIT(i + 3))
    elan_report_mt_slot(drvdata, data + 3, i);
   else
    elan_report_mt_slot(drvdata, ((void*)0), i);
  }
  input_report_key(input, BTN_LEFT, data[2] & 0x01);
 }






 if (data[0] == ELAN_MT_FIRST_FINGER) {
  memcpy(drvdata->prev_report, data,
         sizeof(drvdata->prev_report));
  return;
 }

 if (data[0] == ELAN_MT_SECOND_FINGER) {
  int first = 0;
  u8 *prev_report = drvdata->prev_report;

  if (prev_report[0] != ELAN_MT_FIRST_FINGER)
   return;

  for (i = 0; i < ELAN_MAX_FINGERS; i++) {
   if (prev_report[2] & BIT(i + 3)) {
    if (!first) {
     first = 1;
     elan_report_mt_slot(drvdata, prev_report + 3, i);
    } else {
     elan_report_mt_slot(drvdata, data + 1, i);
    }
   } else {
    elan_report_mt_slot(drvdata, ((void*)0), i);
   }
  }
  input_report_key(input, BTN_LEFT, prev_report[2] & 0x01);
 }

 input_mt_sync_frame(input);
 input_sync(input);
}
