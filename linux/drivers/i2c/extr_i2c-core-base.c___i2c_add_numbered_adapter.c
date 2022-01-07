
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {scalar_t__ nr; } ;


 int EBUSY ;
 int ENOSPC ;
 int GFP_KERNEL ;
 scalar_t__ WARN (int,char*) ;
 int core_lock ;
 int i2c_adapter_idr ;
 int i2c_register_adapter (struct i2c_adapter*) ;
 int idr_alloc (int *,struct i2c_adapter*,scalar_t__,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int __i2c_add_numbered_adapter(struct i2c_adapter *adap)
{
 int id;

 mutex_lock(&core_lock);
 id = idr_alloc(&i2c_adapter_idr, adap, adap->nr, adap->nr + 1, GFP_KERNEL);
 mutex_unlock(&core_lock);
 if (WARN(id < 0, "couldn't get idr"))
  return id == -ENOSPC ? -EBUSY : id;

 return i2c_register_adapter(adap);
}
