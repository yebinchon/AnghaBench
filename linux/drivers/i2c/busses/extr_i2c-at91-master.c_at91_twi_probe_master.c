
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int * quirks; int * algo; } ;
struct at91_twi_dev {TYPE_1__ adapter; int fifo_size; TYPE_3__* dev; int irq; int cmd_complete; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;


 int EPROBE_DEFER ;
 int at91_calc_twi_clock (struct at91_twi_dev*) ;
 int at91_twi_algorithm ;
 int at91_twi_configure_dma (struct at91_twi_dev*,int ) ;
 int at91_twi_quirks ;
 int atmel_twi_interrupt ;
 int dev_err (TYPE_3__*,char*,int ,int) ;
 int dev_info (TYPE_3__*,char*,int ) ;
 int dev_name (TYPE_3__*) ;
 int devm_request_irq (TYPE_2__*,int ,int ,int ,int ,struct at91_twi_dev*) ;
 int init_completion (int *) ;
 int of_property_read_u32 (int ,char*,int *) ;

int at91_twi_probe_master(struct platform_device *pdev,
     u32 phy_addr, struct at91_twi_dev *dev)
{
 int rc;

 init_completion(&dev->cmd_complete);

 rc = devm_request_irq(&pdev->dev, dev->irq, atmel_twi_interrupt, 0,
         dev_name(dev->dev), dev);
 if (rc) {
  dev_err(dev->dev, "Cannot get irq %d: %d\n", dev->irq, rc);
  return rc;
 }

 if (dev->dev->of_node) {
  rc = at91_twi_configure_dma(dev, phy_addr);
  if (rc == -EPROBE_DEFER)
   return rc;
 }

 if (!of_property_read_u32(pdev->dev.of_node, "atmel,fifo-size",
      &dev->fifo_size)) {
  dev_info(dev->dev, "Using FIFO (%u data)\n", dev->fifo_size);
 }

 at91_calc_twi_clock(dev);

 dev->adapter.algo = &at91_twi_algorithm;
 dev->adapter.quirks = &at91_twi_quirks;

 return 0;
}
