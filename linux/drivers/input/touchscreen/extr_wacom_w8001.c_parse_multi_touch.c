
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001 {unsigned char* data; scalar_t__ type; struct input_dev* touch_dev; } ;
struct input_dev {int dummy; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 scalar_t__ BTN_TOOL_FINGER ;
 scalar_t__ BTN_TOOL_PEN ;
 scalar_t__ BTN_TOOL_RUBBER ;
 scalar_t__ KEY_RESERVED ;
 int MT_TOOL_FINGER ;
 int input_mt_report_pointer_emulation (struct input_dev*,int) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_sync (struct input_dev*) ;
 int scale_touch_coordinates (struct w8001*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void parse_multi_touch(struct w8001 *w8001)
{
 struct input_dev *dev = w8001->touch_dev;
 unsigned char *data = w8001->data;
 unsigned int x, y;
 int i;
 int count = 0;

 for (i = 0; i < 2; i++) {
  bool touch = data[0] & (1 << i);

  input_mt_slot(dev, i);
  input_mt_report_slot_state(dev, MT_TOOL_FINGER, touch);
  if (touch) {
   x = (data[6 * i + 1] << 7) | data[6 * i + 2];
   y = (data[6 * i + 3] << 7) | data[6 * i + 4];



   scale_touch_coordinates(w8001, &x, &y);

   input_report_abs(dev, ABS_MT_POSITION_X, x);
   input_report_abs(dev, ABS_MT_POSITION_Y, y);
   count++;
  }
 }





 if (w8001->type != BTN_TOOL_PEN &&
       w8001->type != BTN_TOOL_RUBBER) {
  w8001->type = count == 1 ? BTN_TOOL_FINGER : KEY_RESERVED;
  input_mt_report_pointer_emulation(dev, 1);
 }

 input_sync(dev);
}
