
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_sensor_data {int (* process_data ) (struct iio_dev*,char*,int ) ;} ;
struct ssp_data {int time_syncing; int timestamp; struct iio_dev** sensor_devs; } ;
struct iio_dev {int dummy; } ;


 int EPROTO ;
 int SSP_DEV ;






 int SSP_SENSOR_MAX ;
 int dev_err (int ,char*,...) ;
 struct ssp_sensor_data* iio_priv (struct iio_dev*) ;
 int ktime_get_real_ns () ;
 int ssp_handle_big_data (struct ssp_data*,char*,int*) ;
 int* ssp_offset_map ;
 int ssp_print_mcu_debug (char*,int*,int) ;
 int ssp_queue_ssp_refresh_task (struct ssp_data*,int ) ;
 int stub1 (struct iio_dev*,char*,int ) ;

__attribute__((used)) static int ssp_parse_dataframe(struct ssp_data *data, char *dataframe, int len)
{
 int idx, sd;
 struct ssp_sensor_data *spd;
 struct iio_dev **indio_devs = data->sensor_devs;

 for (idx = 0; idx < len;) {
  switch (dataframe[idx++]) {
  case 132:
   sd = dataframe[idx++];
   if (sd < 0 || sd >= SSP_SENSOR_MAX) {
    dev_err(SSP_DEV,
     "Mcu data frame1 error %d\n", sd);
    return -EPROTO;
   }

   if (indio_devs[sd]) {
    spd = iio_priv(indio_devs[sd]);
    if (spd->process_data)
     spd->process_data(indio_devs[sd],
         &dataframe[idx],
         data->timestamp);
   } else {
    dev_err(SSP_DEV, "no client for frame\n");
   }

   idx += ssp_offset_map[sd];
   break;
  case 131:
   sd = ssp_print_mcu_debug(dataframe, &idx, len);
   if (sd) {
    dev_err(SSP_DEV,
     "Mcu data frame3 error %d\n", sd);
    return sd;
   }
   break;
  case 130:
   idx += len;
   break;
  case 133:
   ssp_handle_big_data(data, dataframe, &idx);
   break;
  case 128:
   data->time_syncing = 1;
   break;
  case 129:
   ssp_queue_ssp_refresh_task(data, 0);
   break;
  }
 }

 if (data->time_syncing)
  data->timestamp = ktime_get_real_ns();

 return 0;
}
