
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dibx000_i2c_master {struct i2c_adapter master_i2c_adap_gpio67; struct i2c_adapter master_i2c_adap_gpio34; struct i2c_adapter master_i2c_adap_gpio12; struct i2c_adapter gated_tuner_i2c_adap; } ;
typedef enum dibx000_i2c_interface { ____Placeholder_dibx000_i2c_interface } dibx000_i2c_interface ;






 int pr_err (char*) ;

struct i2c_adapter *dibx000_get_i2c_adapter(struct dibx000_i2c_master *mst,
      enum dibx000_i2c_interface intf,
      int gating)
{
 struct i2c_adapter *i2c = ((void*)0);

 switch (intf) {
 case 128:
  if (gating)
   i2c = &mst->gated_tuner_i2c_adap;
  break;
 case 131:
  if (!gating)
   i2c = &mst->master_i2c_adap_gpio12;
  break;
 case 130:
  if (!gating)
   i2c = &mst->master_i2c_adap_gpio34;
  break;
 case 129:
  if (gating)
   i2c = &mst->master_i2c_adap_gpio67;
  break;
 default:
  pr_err("incorrect I2C interface selected\n");
  break;
 }

 return i2c;
}
