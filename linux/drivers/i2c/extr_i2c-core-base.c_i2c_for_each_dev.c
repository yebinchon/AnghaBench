
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_for_each_dev (int *,int *,void*,int (*) (struct device*,void*)) ;
 int core_lock ;
 int i2c_bus_type ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int i2c_for_each_dev(void *data, int (*fn)(struct device *dev, void *data))
{
 int res;

 mutex_lock(&core_lock);
 res = bus_for_each_dev(&i2c_bus_type, ((void*)0), data, fn);
 mutex_unlock(&core_lock);

 return res;
}
