
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx711_data {int dev; } ;


 int EIO ;
 int dev_err (int ,char*) ;
 int hx711_read (struct hx711_data*) ;
 scalar_t__ hx711_reset (struct hx711_data*) ;
 int hx711_set_gain_for_channel (struct hx711_data*,int) ;

__attribute__((used)) static int hx711_reset_read(struct hx711_data *hx711_data, int chan)
{
 int ret;
 int val;





 if (hx711_reset(hx711_data)) {
  dev_err(hx711_data->dev, "reset failed!");
  return -EIO;
 }

 ret = hx711_set_gain_for_channel(hx711_data, chan);
 if (ret < 0)
  return ret;

 val = hx711_read(hx711_data);

 return val;
}
