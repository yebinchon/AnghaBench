
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct pdc_state {scalar_t__ hw_type; int pdc_irq; scalar_t__ pdc_reg_vbase; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;


 scalar_t__ FA_HW ;
 scalar_t__ FA_RCVLAZY0_OFFSET ;
 int PDC_INTMASK ;
 scalar_t__ PDC_INTMASK_OFFSET ;
 int PDC_LAZY_INT ;
 scalar_t__ PDC_RCVLAZY0_OFFSET ;
 int PDC_SUCCESS ;
 int dev_dbg (struct device*,char*,int ,int ,struct pdc_state*) ;
 int dev_err (struct device*,char*,int ,int) ;
 int dev_name (struct device*) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct device*) ;
 int iowrite32 (int ,scalar_t__) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int pdc_irq_handler ;

__attribute__((used)) static int pdc_interrupts_init(struct pdc_state *pdcs)
{
 struct platform_device *pdev = pdcs->pdev;
 struct device *dev = &pdev->dev;
 struct device_node *dn = pdev->dev.of_node;
 int err;


 iowrite32(PDC_INTMASK, pdcs->pdc_reg_vbase + PDC_INTMASK_OFFSET);

 if (pdcs->hw_type == FA_HW)
  iowrite32(PDC_LAZY_INT, pdcs->pdc_reg_vbase +
     FA_RCVLAZY0_OFFSET);
 else
  iowrite32(PDC_LAZY_INT, pdcs->pdc_reg_vbase +
     PDC_RCVLAZY0_OFFSET);


 pdcs->pdc_irq = irq_of_parse_and_map(dn, 0);
 dev_dbg(dev, "pdc device %s irq %u for pdcs %p",
  dev_name(dev), pdcs->pdc_irq, pdcs);

 err = devm_request_irq(dev, pdcs->pdc_irq, pdc_irq_handler, 0,
          dev_name(dev), dev);
 if (err) {
  dev_err(dev, "IRQ %u request failed with err %d\n",
   pdcs->pdc_irq, err);
  return err;
 }
 return PDC_SUCCESS;
}
