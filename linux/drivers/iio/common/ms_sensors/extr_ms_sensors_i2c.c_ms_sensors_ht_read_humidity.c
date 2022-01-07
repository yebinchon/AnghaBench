
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ms_ht_dev {size_t res_index; TYPE_1__* client; int lock; } ;
typedef int s32 ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int MS_SENSORS_HT_H_CONVERSION_START ;
 int MS_SENSORS_NO_READ_CMD ;
 int dev_err (int *,char*) ;
 int ms_sensors_convert_and_read (TYPE_1__*,int ,int ,int ,int*) ;
 int ms_sensors_crc_valid (int) ;
 int * ms_sensors_ht_h_conversion_time ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ms_sensors_ht_read_humidity(struct ms_ht_dev *dev_data,
    u32 *humidity)
{
 int ret;
 u32 adc;
 u16 delay;

 mutex_lock(&dev_data->lock);
 delay = ms_sensors_ht_h_conversion_time[dev_data->res_index];
 ret = ms_sensors_convert_and_read(dev_data->client,
       MS_SENSORS_HT_H_CONVERSION_START,
       MS_SENSORS_NO_READ_CMD,
       delay, &adc);
 mutex_unlock(&dev_data->lock);
 if (ret)
  return ret;

 if (!ms_sensors_crc_valid(adc)) {
  dev_err(&dev_data->client->dev,
   "Humidity read crc check error\n");
  return -ENODEV;
 }


 *humidity = (((s32)(adc >> 8) * 12500) >> 16) * 10 - 6000;
 if (*humidity >= 100000)
  *humidity = 100000;

 return 0;
}
