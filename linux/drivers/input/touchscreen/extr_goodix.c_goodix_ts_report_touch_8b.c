
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct goodix_ts_data {int input_dev; int prop; } ;


 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_WIDTH_MAJOR ;
 int MT_TOOL_FINGER ;
 int get_unaligned_le16 (int*) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_report_abs (int ,int ,int) ;
 int touchscreen_report_pos (int ,int *,int,int,int) ;

__attribute__((used)) static void goodix_ts_report_touch_8b(struct goodix_ts_data *ts, u8 *coor_data)
{
 int id = coor_data[0] & 0x0F;
 int input_x = get_unaligned_le16(&coor_data[1]);
 int input_y = get_unaligned_le16(&coor_data[3]);
 int input_w = get_unaligned_le16(&coor_data[5]);

 input_mt_slot(ts->input_dev, id);
 input_mt_report_slot_state(ts->input_dev, MT_TOOL_FINGER, 1);
 touchscreen_report_pos(ts->input_dev, &ts->prop,
          input_x, input_y, 1);
 input_report_abs(ts->input_dev, ABS_MT_TOUCH_MAJOR, input_w);
 input_report_abs(ts->input_dev, ABS_MT_WIDTH_MAJOR, input_w);
}
