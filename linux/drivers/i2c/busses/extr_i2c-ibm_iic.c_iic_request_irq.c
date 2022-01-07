
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ibm_iic_private {int dummy; } ;
struct device_node {int dummy; } ;


 int dev_err (TYPE_1__*,char*,...) ;
 scalar_t__ iic_force_poll ;
 int iic_handler ;
 int iic_interrupt_mode (struct ibm_iic_private*,int ) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 scalar_t__ request_irq (int,int ,int ,char*,struct ibm_iic_private*) ;

__attribute__((used)) static int iic_request_irq(struct platform_device *ofdev,
         struct ibm_iic_private *dev)
{
 struct device_node *np = ofdev->dev.of_node;
 int irq;

 if (iic_force_poll)
  return 0;

 irq = irq_of_parse_and_map(np, 0);
 if (!irq) {
  dev_err(&ofdev->dev, "irq_of_parse_and_map failed\n");
  return 0;
 }




 iic_interrupt_mode(dev, 0);
 if (request_irq(irq, iic_handler, 0, "IBM IIC", dev)) {
  dev_err(&ofdev->dev, "request_irq %d failed\n", irq);

  return 0;
 }

 return irq;
}
