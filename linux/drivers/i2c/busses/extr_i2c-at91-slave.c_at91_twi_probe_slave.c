
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int * algo; } ;
struct at91_twi_dev {TYPE_1__ adapter; int irq; int dev; } ;


 int at91_twi_algorithm_slave ;
 int atmel_twi_interrupt_slave ;
 int dev_err (int ,char*,int ,int) ;
 int dev_name (int ) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct at91_twi_dev*) ;

int at91_twi_probe_slave(struct platform_device *pdev,
    u32 phy_addr, struct at91_twi_dev *dev)
{
 int rc;

 rc = devm_request_irq(&pdev->dev, dev->irq, atmel_twi_interrupt_slave,
         0, dev_name(dev->dev), dev);
 if (rc) {
  dev_err(dev->dev, "Cannot get irq %d: %d\n", dev->irq, rc);
  return rc;
 }

 dev->adapter.algo = &at91_twi_algorithm_slave;

 return 0;
}
