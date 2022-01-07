
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; int owner; } ;


 int core_lock ;
 int get_device (int *) ;
 int i2c_adapter_idr ;
 struct i2c_adapter* idr_find (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ try_module_get (int ) ;

struct i2c_adapter *i2c_get_adapter(int nr)
{
 struct i2c_adapter *adapter;

 mutex_lock(&core_lock);
 adapter = idr_find(&i2c_adapter_idr, nr);
 if (!adapter)
  goto exit;

 if (try_module_get(adapter->owner))
  get_device(&adapter->dev);
 else
  adapter = ((void*)0);

 exit:
 mutex_unlock(&core_lock);
 return adapter;
}
