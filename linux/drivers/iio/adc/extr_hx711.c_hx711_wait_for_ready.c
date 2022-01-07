
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx711_data {int gpiod_dout; } ;


 int EIO ;
 int gpiod_get_value (int ) ;
 int msleep (int) ;

__attribute__((used)) static int hx711_wait_for_ready(struct hx711_data *hx711_data)
{
 int i, val;






 for (i = 0; i < 100; i++) {
  val = gpiod_get_value(hx711_data->gpiod_dout);
  if (!val)
   break;

  msleep(10);
 }
 if (val)
  return -EIO;

 return 0;
}
