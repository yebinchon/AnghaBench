
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ibm_iic_private {int vaddr; scalar_t__ irq; int adap; } ;


 int free_irq (scalar_t__,struct ibm_iic_private*) ;
 int i2c_del_adapter (int *) ;
 int iic_interrupt_mode (struct ibm_iic_private*,int ) ;
 int iounmap (int ) ;
 int kfree (struct ibm_iic_private*) ;
 struct ibm_iic_private* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int iic_remove(struct platform_device *ofdev)
{
 struct ibm_iic_private *dev = platform_get_drvdata(ofdev);

 i2c_del_adapter(&dev->adap);

 if (dev->irq) {
  iic_interrupt_mode(dev, 0);
  free_irq(dev->irq, dev);
 }

 iounmap(dev->vaddr);
 kfree(dev);

 return 0;
}
