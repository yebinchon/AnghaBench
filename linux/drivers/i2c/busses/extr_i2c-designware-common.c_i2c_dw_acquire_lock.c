
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int (* acquire_lock ) () ;int dev; } ;


 int dev_err (int ,char*) ;
 int stub1 () ;

int i2c_dw_acquire_lock(struct dw_i2c_dev *dev)
{
 int ret;

 if (!dev->acquire_lock)
  return 0;

 ret = dev->acquire_lock();
 if (!ret)
  return 0;

 dev_err(dev->dev, "couldn't acquire bus ownership\n");

 return ret;
}
