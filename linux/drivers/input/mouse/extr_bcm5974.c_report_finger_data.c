
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_finger {int orientation; int tool_minor; int tool_major; int touch_minor; int touch_major; } ;
struct input_mt_pos {int x; int y; } ;
struct input_dev {int dummy; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_MT_WIDTH_MAJOR ;
 int ABS_MT_WIDTH_MINOR ;
 int MAX_FINGER_ORIENTATION ;
 int MT_TOOL_FINGER ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int raw2int (int ) ;

__attribute__((used)) static void report_finger_data(struct input_dev *input, int slot,
          const struct input_mt_pos *pos,
          const struct tp_finger *f)
{
 input_mt_slot(input, slot);
 input_mt_report_slot_state(input, MT_TOOL_FINGER, 1);

 input_report_abs(input, ABS_MT_TOUCH_MAJOR,
    raw2int(f->touch_major) << 1);
 input_report_abs(input, ABS_MT_TOUCH_MINOR,
    raw2int(f->touch_minor) << 1);
 input_report_abs(input, ABS_MT_WIDTH_MAJOR,
    raw2int(f->tool_major) << 1);
 input_report_abs(input, ABS_MT_WIDTH_MINOR,
    raw2int(f->tool_minor) << 1);
 input_report_abs(input, ABS_MT_ORIENTATION,
    MAX_FINGER_ORIENTATION - raw2int(f->orientation));
 input_report_abs(input, ABS_MT_POSITION_X, pos->x);
 input_report_abs(input, ABS_MT_POSITION_Y, pos->y);
}
