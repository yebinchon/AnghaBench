
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;
struct elan_drvdata {int max_y; struct input_dev* input; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int MT_TOOL_FINGER ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,unsigned int) ;
 int input_report_abs (struct input_dev*,int ,int) ;

__attribute__((used)) static void elan_report_mt_slot(struct elan_drvdata *drvdata, u8 *data,
    unsigned int slot_num)
{
 struct input_dev *input = drvdata->input;
 int x, y, p;

 bool active = !!data;

 input_mt_slot(input, slot_num);
 input_mt_report_slot_state(input, MT_TOOL_FINGER, active);
 if (active) {
  x = ((data[0] & 0xF0) << 4) | data[1];
  y = drvdata->max_y -
      (((data[0] & 0x07) << 8) | data[2]);
  p = data[4];

  input_report_abs(input, ABS_MT_POSITION_X, x);
  input_report_abs(input, ABS_MT_POSITION_Y, y);
  input_report_abs(input, ABS_MT_PRESSURE, p);
 }
}
