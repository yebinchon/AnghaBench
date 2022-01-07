
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int dev; scalar_t__ shared_with_punit; } ;


 int pm_runtime_disable (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static void dw_i2c_plat_pm_cleanup(struct dw_i2c_dev *dev)
{
 pm_runtime_disable(dev->dev);

 if (dev->shared_with_punit)
  pm_runtime_put_noidle(dev->dev);
}
