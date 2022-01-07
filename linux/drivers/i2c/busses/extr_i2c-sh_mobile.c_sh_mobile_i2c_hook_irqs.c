
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int dummy; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dev; } ;
typedef scalar_t__ resource_size_t ;


 int ENOENT ;
 int IORESOURCE_IRQ ;
 int dev_err (int *,char*,scalar_t__*) ;
 int dev_name (int *) ;
 int devm_request_irq (int *,scalar_t__,int ,int ,int ,struct sh_mobile_i2c_data*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int sh_mobile_i2c_isr ;

__attribute__((used)) static int sh_mobile_i2c_hook_irqs(struct platform_device *dev, struct sh_mobile_i2c_data *pd)
{
 struct resource *res;
 resource_size_t n;
 int k = 0, ret;

 while ((res = platform_get_resource(dev, IORESOURCE_IRQ, k))) {
  for (n = res->start; n <= res->end; n++) {
   ret = devm_request_irq(&dev->dev, n, sh_mobile_i2c_isr,
       0, dev_name(&dev->dev), pd);
   if (ret) {
    dev_err(&dev->dev, "cannot request IRQ %pa\n", &n);
    return ret;
   }
  }
  k++;
 }

 return k > 0 ? 0 : -ENOENT;
}
