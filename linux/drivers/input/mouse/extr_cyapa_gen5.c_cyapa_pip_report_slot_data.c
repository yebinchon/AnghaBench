
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct input_dev {int dummy; } ;
struct cyapa_pip_touch_record {int x_hi; int x_lo; int y_hi; int y_lo; int z; int major_axis_len; int minor_axis_len; int major_tool_len; int minor_tool_len; int orientation; int touch_tip_event_id; } ;
struct cyapa {int max_abs_x; int max_abs_y; scalar_t__ y_origin; scalar_t__ x_origin; struct input_dev* input; } ;


 int ABS_DISTANCE ;
 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_MT_WIDTH_MAJOR ;
 int ABS_MT_WIDTH_MINOR ;
 int MT_TOOL_FINGER ;
 scalar_t__ PIP_GET_EVENT_ID (int ) ;
 int PIP_GET_TOUCH_ID (int ) ;
 scalar_t__ RECORD_EVENT_LIFTOFF ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;

__attribute__((used)) static void cyapa_pip_report_slot_data(struct cyapa *cyapa,
  const struct cyapa_pip_touch_record *touch)
{
 struct input_dev *input = cyapa->input;
 u8 event_id = PIP_GET_EVENT_ID(touch->touch_tip_event_id);
 int slot = PIP_GET_TOUCH_ID(touch->touch_tip_event_id);
 int x, y;

 if (event_id == RECORD_EVENT_LIFTOFF)
  return;

 input_mt_slot(input, slot);
 input_mt_report_slot_state(input, MT_TOOL_FINGER, 1);
 x = (touch->x_hi << 8) | touch->x_lo;
 if (cyapa->x_origin)
  x = cyapa->max_abs_x - x;
 y = (touch->y_hi << 8) | touch->y_lo;
 if (cyapa->y_origin)
  y = cyapa->max_abs_y - y;
 input_report_abs(input, ABS_MT_POSITION_X, x);
 input_report_abs(input, ABS_MT_POSITION_Y, y);
 input_report_abs(input, ABS_DISTANCE, 0);
 input_report_abs(input, ABS_MT_PRESSURE,
  touch->z);
 input_report_abs(input, ABS_MT_TOUCH_MAJOR,
  touch->major_axis_len);
 input_report_abs(input, ABS_MT_TOUCH_MINOR,
  touch->minor_axis_len);

 input_report_abs(input, ABS_MT_WIDTH_MAJOR,
  touch->major_tool_len);
 input_report_abs(input, ABS_MT_WIDTH_MINOR,
  touch->minor_tool_len);

 input_report_abs(input, ABS_MT_ORIENTATION,
  touch->orientation);
}
