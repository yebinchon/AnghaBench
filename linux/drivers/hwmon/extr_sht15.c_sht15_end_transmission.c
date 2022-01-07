
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht15_data {int sck; int data; } ;


 int SHT15_TSCKH ;
 int SHT15_TSCKL ;
 int SHT15_TSU ;
 int gpiod_direction_output (int ,int) ;
 int gpiod_set_value (int ,int) ;
 int ndelay (int ) ;

__attribute__((used)) static int sht15_end_transmission(struct sht15_data *data)
{
 int err;

 err = gpiod_direction_output(data->data, 1);
 if (err)
  return err;
 ndelay(SHT15_TSU);
 gpiod_set_value(data->sck, 1);
 ndelay(SHT15_TSCKH);
 gpiod_set_value(data->sck, 0);
 ndelay(SHT15_TSCKL);
 return 0;
}
