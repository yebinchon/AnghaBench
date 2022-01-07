
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct st_irq_syscfg {int config; int syscfg; int regmap; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ST_A9_EXTIRQ_INV_SEL (int ) ;
 int ST_A9_IRQ_MASK ;
 int ST_A9_IRQ_MAX_CHANS ;
 int dev_err (TYPE_1__*,char*) ;
 struct st_irq_syscfg* dev_get_drvdata (TYPE_1__*) ;
 int of_property_count_u32_elems (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int st_irq_xlate (struct platform_device*,int ,int,int) ;

__attribute__((used)) static int st_irq_syscfg_enable(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct st_irq_syscfg *ddata = dev_get_drvdata(&pdev->dev);
 int channels, ret, i;
 u32 device, invert;

 channels = of_property_count_u32_elems(np, "st,irq-device");
 if (channels != ST_A9_IRQ_MAX_CHANS) {
  dev_err(&pdev->dev, "st,enable-irq-device must have 2 elems\n");
  return -EINVAL;
 }

 channels = of_property_count_u32_elems(np, "st,fiq-device");
 if (channels != ST_A9_IRQ_MAX_CHANS) {
  dev_err(&pdev->dev, "st,enable-fiq-device must have 2 elems\n");
  return -EINVAL;
 }

 for (i = 0; i < ST_A9_IRQ_MAX_CHANS; i++) {
  of_property_read_u32_index(np, "st,irq-device", i, &device);

  ret = st_irq_xlate(pdev, device, i, 1);
  if (ret)
   return ret;

  of_property_read_u32_index(np, "st,fiq-device", i, &device);

  ret = st_irq_xlate(pdev, device, i, 0);
  if (ret)
   return ret;
 }


 of_property_read_u32(np, "st,invert-ext", &invert);
 ddata->config |= ST_A9_EXTIRQ_INV_SEL(invert);

 return regmap_update_bits(ddata->regmap, ddata->syscfg,
      ST_A9_IRQ_MASK, ddata->config);
}
