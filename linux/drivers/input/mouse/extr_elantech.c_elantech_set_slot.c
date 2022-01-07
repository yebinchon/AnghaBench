
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int MT_TOOL_FINGER ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;

__attribute__((used)) static void elantech_set_slot(struct input_dev *dev, int slot, bool active,
         unsigned int x, unsigned int y)
{
 input_mt_slot(dev, slot);
 input_mt_report_slot_state(dev, MT_TOOL_FINGER, active);
 if (active) {
  input_report_abs(dev, ABS_MT_POSITION_X, x);
  input_report_abs(dev, ABS_MT_POSITION_Y, y);
 }
}
