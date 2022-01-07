
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int (* release_lock ) () ;} ;


 int stub1 () ;

void i2c_dw_release_lock(struct dw_i2c_dev *dev)
{
 if (dev->release_lock)
  dev->release_lock();
}
