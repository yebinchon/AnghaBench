
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx711_data {int gpiod_pd_sck; int gpiod_dout; } ;


 int gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 int hx711_read (struct hx711_data*) ;
 int hx711_wait_for_ready (struct hx711_data*) ;
 int msleep (int) ;

__attribute__((used)) static int hx711_reset(struct hx711_data *hx711_data)
{
 int ret;
 int val = gpiod_get_value(hx711_data->gpiod_dout);

 if (val) {
  gpiod_set_value(hx711_data->gpiod_pd_sck, 1);
  msleep(10);
  gpiod_set_value(hx711_data->gpiod_pd_sck, 0);

  ret = hx711_wait_for_ready(hx711_data);
  if (ret)
   return ret;




  ret = hx711_read(hx711_data);
  if (ret < 0)
   return ret;





  val = hx711_wait_for_ready(hx711_data);
 }

 return val;
}
