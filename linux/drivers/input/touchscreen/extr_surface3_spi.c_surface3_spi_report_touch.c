
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct surface3_ts_data_finger {int status; int height; int width; int y; int x; int tracking_id; } ;
struct surface3_ts_data {int input_dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_WIDTH_MAJOR ;
 int ABS_MT_WIDTH_MINOR ;
 int MT_TOOL_FINGER ;
 int get_unaligned_le16 (int *) ;
 int input_mt_get_slot_by_key (int ,int ) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_report_abs (int ,int ,int ) ;

__attribute__((used)) static void surface3_spi_report_touch(struct surface3_ts_data *ts_data,
       struct surface3_ts_data_finger *finger)
{
 int st = finger->status & 0x01;
 int slot;

 slot = input_mt_get_slot_by_key(ts_data->input_dev,
    get_unaligned_le16(&finger->tracking_id));
 if (slot < 0)
  return;

 input_mt_slot(ts_data->input_dev, slot);
 input_mt_report_slot_state(ts_data->input_dev, MT_TOOL_FINGER, st);
 if (st) {
  input_report_abs(ts_data->input_dev,
     ABS_MT_POSITION_X,
     get_unaligned_le16(&finger->x));
  input_report_abs(ts_data->input_dev,
     ABS_MT_POSITION_Y,
     get_unaligned_le16(&finger->y));
  input_report_abs(ts_data->input_dev,
     ABS_MT_WIDTH_MAJOR,
     get_unaligned_le16(&finger->width));
  input_report_abs(ts_data->input_dev,
     ABS_MT_WIDTH_MINOR,
     get_unaligned_le16(&finger->height));
 }
}
