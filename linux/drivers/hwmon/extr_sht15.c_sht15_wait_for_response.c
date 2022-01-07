
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht15_data {int sck; int dev; int data; } ;


 int EIO ;
 int SHT15_TSCKH ;
 int SHT15_TSCKL ;
 int dev_err (int ,char*) ;
 int gpiod_direction_input (int ) ;
 scalar_t__ gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 int ndelay (int ) ;
 int sht15_connection_reset (struct sht15_data*) ;

__attribute__((used)) static int sht15_wait_for_response(struct sht15_data *data)
{
 int err;

 err = gpiod_direction_input(data->data);
 if (err)
  return err;
 gpiod_set_value(data->sck, 1);
 ndelay(SHT15_TSCKH);
 if (gpiod_get_value(data->data)) {
  gpiod_set_value(data->sck, 0);
  dev_err(data->dev, "Command not acknowledged\n");
  err = sht15_connection_reset(data);
  if (err)
   return err;
  return -EIO;
 }
 gpiod_set_value(data->sck, 0);
 ndelay(SHT15_TSCKL);
 return 0;
}
