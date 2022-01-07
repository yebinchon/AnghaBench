
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct surface3_ts_data {int * gpiod_rst; } ;


 int gpiod_set_value (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void surface3_spi_power(struct surface3_ts_data *data, bool on)
{
 gpiod_set_value(data->gpiod_rst[0], on);
 gpiod_set_value(data->gpiod_rst[1], on);

 msleep(20);
}
