
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct elan_tp_data {unsigned int max_x; unsigned int max_y; unsigned int width_x; unsigned int width_y; unsigned int pressure_adjustment; struct input_dev* input; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_TOOL_WIDTH ;
 unsigned int ETP_FWIDTH_REDUCE ;
 unsigned int ETP_MAX_PRESSURE ;
 int MT_TOOL_FINGER ;
 int dev_dbg (int ,char*,int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static void elan_report_contact(struct elan_tp_data *data,
    int contact_num, bool contact_valid,
    u8 *finger_data)
{
 struct input_dev *input = data->input;
 unsigned int pos_x, pos_y;
 unsigned int pressure, mk_x, mk_y;
 unsigned int area_x, area_y, major, minor;
 unsigned int scaled_pressure;

 if (contact_valid) {
  pos_x = ((finger_data[0] & 0xf0) << 4) |
      finger_data[1];
  pos_y = ((finger_data[0] & 0x0f) << 8) |
      finger_data[2];
  mk_x = (finger_data[3] & 0x0f);
  mk_y = (finger_data[3] >> 4);
  pressure = finger_data[4];

  if (pos_x > data->max_x || pos_y > data->max_y) {
   dev_dbg(input->dev.parent,
    "[%d] x=%d y=%d over max (%d, %d)",
    contact_num, pos_x, pos_y,
    data->max_x, data->max_y);
   return;
  }





  area_x = mk_x * (data->width_x - ETP_FWIDTH_REDUCE);
  area_y = mk_y * (data->width_y - ETP_FWIDTH_REDUCE);

  major = max(area_x, area_y);
  minor = min(area_x, area_y);

  scaled_pressure = pressure + data->pressure_adjustment;

  if (scaled_pressure > ETP_MAX_PRESSURE)
   scaled_pressure = ETP_MAX_PRESSURE;

  input_mt_slot(input, contact_num);
  input_mt_report_slot_state(input, MT_TOOL_FINGER, 1);
  input_report_abs(input, ABS_MT_POSITION_X, pos_x);
  input_report_abs(input, ABS_MT_POSITION_Y, data->max_y - pos_y);
  input_report_abs(input, ABS_MT_PRESSURE, scaled_pressure);
  input_report_abs(input, ABS_TOOL_WIDTH, mk_x);
  input_report_abs(input, ABS_MT_TOUCH_MAJOR, major);
  input_report_abs(input, ABS_MT_TOUCH_MINOR, minor);
 } else {
  input_mt_slot(input, contact_num);
  input_mt_report_slot_state(input, MT_TOOL_FINGER, 0);
 }
}
