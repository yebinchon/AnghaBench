
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;
struct elan_drvdata {struct input_dev* input; } ;


 int BIT (int) ;
 int BTN_LEFT ;
 int ELAN_FINGER_DATA_LEN ;
 int ELAN_MAX_FINGERS ;
 int elan_report_mt_slot (struct elan_drvdata*,int*,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void elan_i2c_report_input(struct elan_drvdata *drvdata, u8 *data)
{
 struct input_dev *input = drvdata->input;
 u8 *finger_data;
 int i;
 finger_data = data + 2;
 for (i = 0; i < ELAN_MAX_FINGERS; i++) {
  if (data[1] & BIT(i + 3)) {
   elan_report_mt_slot(drvdata, finger_data, i);
   finger_data += ELAN_FINGER_DATA_LEN;
  } else {
   elan_report_mt_slot(drvdata, ((void*)0), i);
  }
 }

 input_report_key(input, BTN_LEFT, data[1] & 0x01);
 input_mt_sync_frame(input);
 input_sync(input);
}
