
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct surface3_ts_data_pen {int dummy; } ;
struct surface3_ts_data {int pen_input_dev; } ;


 int input_sync (int ) ;
 int surface3_spi_report_pen (struct surface3_ts_data*,struct surface3_ts_data_pen*) ;

__attribute__((used)) static void surface3_spi_process_pen(struct surface3_ts_data *ts_data, u8 *data)
{
 struct surface3_ts_data_pen *pen;

 pen = (struct surface3_ts_data_pen *)&data[15];

 surface3_spi_report_pen(ts_data, pen);
 input_sync(ts_data->pen_input_dev);
}
