
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct g762_platform_data {int clk_freq; int fan_startv; int pwm_polarity; int fan_gear_mode; } ;


 struct g762_platform_data* dev_get_platdata (int *) ;
 int do_set_clk_freq (int *,int ) ;
 int do_set_fan_gear_mode (int *,int ) ;
 int do_set_fan_startv (int *,int ) ;
 int do_set_pwm_polarity (int *,int ) ;

__attribute__((used)) static int g762_pdata_prop_import(struct i2c_client *client)
{
 struct g762_platform_data *pdata = dev_get_platdata(&client->dev);
 int ret;

 if (!pdata)
  return 0;

 ret = do_set_fan_gear_mode(&client->dev, pdata->fan_gear_mode);
 if (ret)
  return ret;

 ret = do_set_pwm_polarity(&client->dev, pdata->pwm_polarity);
 if (ret)
  return ret;

 ret = do_set_fan_startv(&client->dev, pdata->fan_startv);
 if (ret)
  return ret;

 return do_set_clk_freq(&client->dev, pdata->clk_freq);
}
