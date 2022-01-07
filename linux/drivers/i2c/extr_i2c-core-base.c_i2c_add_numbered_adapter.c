
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int nr; } ;


 int __i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;

int i2c_add_numbered_adapter(struct i2c_adapter *adap)
{
 if (adap->nr == -1)
  return i2c_add_adapter(adap);

 return __i2c_add_numbered_adapter(adap);
}
