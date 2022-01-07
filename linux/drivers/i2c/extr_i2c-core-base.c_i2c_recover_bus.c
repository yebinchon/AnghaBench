
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {TYPE_1__* bus_recovery_info; int dev; } ;
struct TYPE_2__ {int (* recover_bus ) (struct i2c_adapter*) ;} ;


 int EOPNOTSUPP ;
 int dev_dbg (int *,char*) ;
 int stub1 (struct i2c_adapter*) ;

int i2c_recover_bus(struct i2c_adapter *adap)
{
 if (!adap->bus_recovery_info)
  return -EOPNOTSUPP;

 dev_dbg(&adap->dev, "Trying i2c bus recovery\n");
 return adap->bus_recovery_info->recover_bus(adap);
}
