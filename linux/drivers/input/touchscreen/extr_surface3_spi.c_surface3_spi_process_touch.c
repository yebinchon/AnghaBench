
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct surface3_ts_data_finger {int status; } ;
struct surface3_ts_data {int input_dev; } ;


 int get_unaligned_le16 (int *) ;
 int input_mt_sync_frame (int ) ;
 int input_sync (int ) ;
 int surface3_spi_report_touch (struct surface3_ts_data*,struct surface3_ts_data_finger*) ;

__attribute__((used)) static void surface3_spi_process_touch(struct surface3_ts_data *ts_data, u8 *data)
{
 u16 timestamp;
 unsigned int i;
 timestamp = get_unaligned_le16(&data[15]);

 for (i = 0; i < 13; i++) {
  struct surface3_ts_data_finger *finger;

  finger = (struct surface3_ts_data_finger *)&data[17 +
    i * sizeof(struct surface3_ts_data_finger)];







  if (finger->status & 0x10)
   break;

  surface3_spi_report_touch(ts_data, finger);
 }

 input_mt_sync_frame(ts_data->input_dev);
 input_sync(ts_data->input_dev);
}
