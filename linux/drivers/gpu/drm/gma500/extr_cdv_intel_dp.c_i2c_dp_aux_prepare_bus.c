
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int retries; int * algo; } ;


 int i2c_dp_aux_algo ;
 int i2c_dp_aux_reset_bus (struct i2c_adapter*) ;

__attribute__((used)) static int
i2c_dp_aux_prepare_bus(struct i2c_adapter *adapter)
{
 adapter->algo = &i2c_dp_aux_algo;
 adapter->retries = 3;
 i2c_dp_aux_reset_bus(adapter);
 return 0;
}
