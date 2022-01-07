
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hideep_event {int index; int flag; int w; int z; int y; int x; int type; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int HIDEEP_MT_RELEASED ;
 int __GET_MT_TOOL_TYPE (int ) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int le16_to_cpup (int *) ;

__attribute__((used)) static void hideep_report_slot(struct input_dev *input,
          const struct hideep_event *event)
{
 input_mt_slot(input, event->index & 0x0f);
 input_mt_report_slot_state(input,
       __GET_MT_TOOL_TYPE(event->type),
       !(event->flag & HIDEEP_MT_RELEASED));
 if (!(event->flag & HIDEEP_MT_RELEASED)) {
  input_report_abs(input, ABS_MT_POSITION_X,
     le16_to_cpup(&event->x));
  input_report_abs(input, ABS_MT_POSITION_Y,
     le16_to_cpup(&event->y));
  input_report_abs(input, ABS_MT_PRESSURE,
     le16_to_cpup(&event->z));
  input_report_abs(input, ABS_MT_TOUCH_MAJOR, event->w);
 }
}
