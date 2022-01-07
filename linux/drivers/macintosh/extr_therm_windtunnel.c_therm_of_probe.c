
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ running; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 int do_attach (struct i2c_adapter*) ;
 int g4fan_driver ;
 int i2c_add_driver (int *) ;
 struct i2c_adapter* i2c_get_adapter (int) ;
 int i2c_put_adapter (struct i2c_adapter*) ;
 TYPE_1__ x ;

__attribute__((used)) static int therm_of_probe(struct platform_device *dev)
{
 struct i2c_adapter *adap;
 int ret, i = 0;

 adap = i2c_get_adapter(0);
 if (!adap)
  return -EPROBE_DEFER;

 ret = i2c_add_driver(&g4fan_driver);
 if (ret) {
  i2c_put_adapter(adap);
  return ret;
 }


 while (adap) {
  do_attach(adap);
  if (x.running)
   return 0;
  i2c_put_adapter(adap);
  adap = i2c_get_adapter(++i);
 }

 return -ENODEV;
}
