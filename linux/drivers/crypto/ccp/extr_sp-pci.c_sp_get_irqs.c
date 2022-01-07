
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {struct device* dev; } ;
struct device {int dummy; } ;


 int dev_notice (struct device*,char*,int) ;
 int sp_get_msi_irq (struct sp_device*) ;
 int sp_get_msix_irqs (struct sp_device*) ;

__attribute__((used)) static int sp_get_irqs(struct sp_device *sp)
{
 struct device *dev = sp->dev;
 int ret;

 ret = sp_get_msix_irqs(sp);
 if (!ret)
  return 0;


 dev_notice(dev, "could not enable MSI-X (%d), trying MSI\n", ret);
 ret = sp_get_msi_irq(sp);
 if (!ret)
  return 0;


 dev_notice(dev, "could not enable MSI (%d)\n", ret);

 return ret;
}
