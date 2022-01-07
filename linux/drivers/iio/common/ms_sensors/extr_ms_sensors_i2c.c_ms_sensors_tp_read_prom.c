
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ms_tp_dev {TYPE_1__* client; int * prom; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 scalar_t__ MS_SENSORS_TP_PROM_READ ;
 int MS_SENSORS_TP_PROM_WORDS_NB ;
 int dev_err (int *,char*) ;
 int ms_sensors_read_prom_word (TYPE_1__*,scalar_t__,int *) ;
 int ms_sensors_tp_crc_valid (int *,int) ;

int ms_sensors_tp_read_prom(struct ms_tp_dev *dev_data)
{
 int i, ret;

 for (i = 0; i < MS_SENSORS_TP_PROM_WORDS_NB; i++) {
  ret = ms_sensors_read_prom_word(
   dev_data->client,
   MS_SENSORS_TP_PROM_READ + (i << 1),
   &dev_data->prom[i]);

  if (ret)
   return ret;
 }

 if (!ms_sensors_tp_crc_valid(dev_data->prom,
         MS_SENSORS_TP_PROM_WORDS_NB + 1)) {
  dev_err(&dev_data->client->dev,
   "Calibration coefficients crc check error\n");
  return -ENODEV;
 }

 return 0;
}
