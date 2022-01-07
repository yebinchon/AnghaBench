
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct goodix_ts_data {int contact_size; int input_dev; } ;


 int BIT (int) ;
 int GOODIX_MAX_CONTACTS ;
 int GOODIX_MAX_CONTACT_SIZE ;
 int KEY_LEFTMETA ;
 int goodix_ts_read_input_report (struct goodix_ts_data*,int*) ;
 int goodix_ts_report_touch_8b (struct goodix_ts_data*,int*) ;
 int goodix_ts_report_touch_9b (struct goodix_ts_data*,int*) ;
 int input_mt_sync_frame (int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void goodix_process_events(struct goodix_ts_data *ts)
{
 u8 point_data[1 + GOODIX_MAX_CONTACT_SIZE * GOODIX_MAX_CONTACTS];
 int touch_num;
 int i;

 touch_num = goodix_ts_read_input_report(ts, point_data);
 if (touch_num < 0)
  return;





 input_report_key(ts->input_dev, KEY_LEFTMETA, point_data[0] & BIT(4));

 for (i = 0; i < touch_num; i++)
  if (ts->contact_size == 9)
   goodix_ts_report_touch_9b(ts,
    &point_data[1 + ts->contact_size * i]);
  else
   goodix_ts_report_touch_8b(ts,
    &point_data[1 + ts->contact_size * i]);

 input_mt_sync_frame(ts->input_dev);
 input_sync(ts->input_dev);
}
