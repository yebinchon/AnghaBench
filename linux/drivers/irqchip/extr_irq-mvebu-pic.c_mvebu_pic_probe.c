
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct irq_chip {int irq_eoi; int irq_unmask; int irq_mask; int name; } ;
struct mvebu_pic {scalar_t__ parent_irq; int domain; struct irq_chip irq_chip; int base; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PIC_MAX_IRQS ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct mvebu_pic* devm_kzalloc (TYPE_1__*,int,int ) ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct mvebu_pic*) ;
 scalar_t__ irq_of_parse_and_map (struct device_node*,int ) ;
 int irq_set_chained_handler (scalar_t__,int ) ;
 int irq_set_handler_data (scalar_t__,struct mvebu_pic*) ;
 int mvebu_pic_domain_ops ;
 int mvebu_pic_enable_percpu_irq ;
 int mvebu_pic_eoi_irq ;
 int mvebu_pic_handle_cascade_irq ;
 int mvebu_pic_mask_irq ;
 int mvebu_pic_unmask_irq ;
 int on_each_cpu (int ,struct mvebu_pic*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mvebu_pic*) ;

__attribute__((used)) static int mvebu_pic_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct mvebu_pic *pic;
 struct irq_chip *irq_chip;
 struct resource *res;

 pic = devm_kzalloc(&pdev->dev, sizeof(struct mvebu_pic), GFP_KERNEL);
 if (!pic)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pic->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pic->base))
  return PTR_ERR(pic->base);

 irq_chip = &pic->irq_chip;
 irq_chip->name = dev_name(&pdev->dev);
 irq_chip->irq_mask = mvebu_pic_mask_irq;
 irq_chip->irq_unmask = mvebu_pic_unmask_irq;
 irq_chip->irq_eoi = mvebu_pic_eoi_irq;

 pic->parent_irq = irq_of_parse_and_map(node, 0);
 if (pic->parent_irq <= 0) {
  dev_err(&pdev->dev, "Failed to parse parent interrupt\n");
  return -EINVAL;
 }

 pic->domain = irq_domain_add_linear(node, PIC_MAX_IRQS,
         &mvebu_pic_domain_ops, pic);
 if (!pic->domain) {
  dev_err(&pdev->dev, "Failed to allocate irq domain\n");
  return -ENOMEM;
 }

 irq_set_chained_handler(pic->parent_irq, mvebu_pic_handle_cascade_irq);
 irq_set_handler_data(pic->parent_irq, pic);

 on_each_cpu(mvebu_pic_enable_percpu_irq, pic, 1);

 platform_set_drvdata(pdev, pic);

 return 0;
}
