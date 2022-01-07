
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_tcon {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct sun4i_tcon*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int sun4i_tcon_handler ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int sun4i_tcon_init_irq(struct device *dev,
          struct sun4i_tcon *tcon)
{
 struct platform_device *pdev = to_platform_device(dev);
 int irq, ret;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "Couldn't retrieve the TCON interrupt\n");
  return irq;
 }

 ret = devm_request_irq(dev, irq, sun4i_tcon_handler, 0,
          dev_name(dev), tcon);
 if (ret) {
  dev_err(dev, "Couldn't request the IRQ\n");
  return ret;
 }

 return 0;
}
