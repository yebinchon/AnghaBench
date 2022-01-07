
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int adap; } ;
struct platform_device {int dev; } ;


 int i2c_del_adapter (int *) ;
 struct sh_mobile_i2c_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int sh_mobile_i2c_release_dma (struct sh_mobile_i2c_data*) ;

__attribute__((used)) static int sh_mobile_i2c_remove(struct platform_device *dev)
{
 struct sh_mobile_i2c_data *pd = platform_get_drvdata(dev);

 i2c_del_adapter(&pd->adap);
 sh_mobile_i2c_release_dma(pd);
 pm_runtime_disable(&dev->dev);
 return 0;
}
