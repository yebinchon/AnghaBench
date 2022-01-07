
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct highlander_i2c_dev {int base; scalar_t__ irq; int adapter; } ;


 int free_irq (scalar_t__,struct highlander_i2c_dev*) ;
 int i2c_del_adapter (int *) ;
 int iounmap (int ) ;
 int kfree (struct highlander_i2c_dev*) ;
 struct highlander_i2c_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int highlander_i2c_remove(struct platform_device *pdev)
{
 struct highlander_i2c_dev *dev = platform_get_drvdata(pdev);

 i2c_del_adapter(&dev->adapter);

 if (dev->irq)
  free_irq(dev->irq, dev);

 iounmap(dev->base);
 kfree(dev);

 return 0;
}
