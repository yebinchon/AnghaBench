
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_bit_data {int * getscl; } ;
struct i2c_adapter {int retries; int dev; int * quirks; int * algo; struct i2c_algo_bit_data* algo_data; } ;


 int ENODEV ;
 int bit_test ;
 int dev_warn (int *,char*) ;
 int i2c_bit_algo ;
 int i2c_bit_quirk_no_clk_stretch ;
 int test_bus (struct i2c_adapter*) ;

__attribute__((used)) static int __i2c_bit_add_bus(struct i2c_adapter *adap,
        int (*add_adapter)(struct i2c_adapter *))
{
 struct i2c_algo_bit_data *bit_adap = adap->algo_data;
 int ret;

 if (bit_test) {
  ret = test_bus(adap);
  if (bit_test >= 2 && ret < 0)
   return -ENODEV;
 }


 adap->algo = &i2c_bit_algo;
 adap->retries = 3;
 if (bit_adap->getscl == ((void*)0))
  adap->quirks = &i2c_bit_quirk_no_clk_stretch;






 ret = add_adapter(adap);
 if (ret < 0)
  return ret;


 if (bit_adap->getscl == ((void*)0)) {
  dev_warn(&adap->dev, "Not I2C compliant: can't read SCL\n");
  dev_warn(&adap->dev, "Bus may be unreliable\n");
 }
 return 0;
}
