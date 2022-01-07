
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ms_ht_dev {int lock; int client; } ;
typedef int ssize_t ;


 int ms_sensors_read_config_reg (int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;

ssize_t ms_sensors_show_battery_low(struct ms_ht_dev *dev_data,
        char *buf)
{
 int ret;
 u8 config_reg;

 mutex_lock(&dev_data->lock);
 ret = ms_sensors_read_config_reg(dev_data->client, &config_reg);
 mutex_unlock(&dev_data->lock);
 if (ret)
  return ret;

 return sprintf(buf, "%d\n", (config_reg & 0x40) >> 6);
}
