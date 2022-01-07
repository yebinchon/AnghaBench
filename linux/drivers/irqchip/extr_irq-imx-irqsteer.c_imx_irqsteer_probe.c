
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct irqsteer_data {int channel; int irq_count; int reg_num; scalar_t__ ipg_clk; int * irq; int domain; scalar_t__ regs; void* saved_reg; int lock; } ;
struct device_node {int dummy; } ;


 int BIT (int) ;
 scalar_t__ CHANCTRL ;
 int CHAN_MAX_OUTPUT_INT ;
 int CONFIG_PM_SLEEP ;
 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (TYPE_1__*,char*,...) ;
 scalar_t__ devm_clk_get (TYPE_1__*,char*) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int imx_irqsteer_domain_ops ;
 int imx_irqsteer_irq_handler ;
 int irq_domain_add_linear (struct device_node*,int,int *,struct irqsteer_data*) ;
 int irq_of_parse_and_map (struct device_node*,int) ;
 int irq_set_chained_handler_and_data (int ,int ,struct irqsteer_data*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,struct irqsteer_data*) ;
 int raw_spin_lock_init (int *) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int imx_irqsteer_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct irqsteer_data *data;
 u32 irqs_num;
 int i, ret;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(data->regs)) {
  dev_err(&pdev->dev, "failed to initialize reg\n");
  return PTR_ERR(data->regs);
 }

 data->ipg_clk = devm_clk_get(&pdev->dev, "ipg");
 if (IS_ERR(data->ipg_clk)) {
  ret = PTR_ERR(data->ipg_clk);
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev, "failed to get ipg clk: %d\n", ret);
  return ret;
 }

 raw_spin_lock_init(&data->lock);

 ret = of_property_read_u32(np, "fsl,num-irqs", &irqs_num);
 if (ret)
  return ret;
 ret = of_property_read_u32(np, "fsl,channel", &data->channel);
 if (ret)
  return ret;





 data->irq_count = DIV_ROUND_UP(irqs_num, 64);
 data->reg_num = irqs_num / 32;

 if (IS_ENABLED(CONFIG_PM_SLEEP)) {
  data->saved_reg = devm_kzalloc(&pdev->dev,
     sizeof(u32) * data->reg_num,
     GFP_KERNEL);
  if (!data->saved_reg)
   return -ENOMEM;
 }

 ret = clk_prepare_enable(data->ipg_clk);
 if (ret) {
  dev_err(&pdev->dev, "failed to enable ipg clk: %d\n", ret);
  return ret;
 }


 writel_relaxed(BIT(data->channel), data->regs + CHANCTRL);

 data->domain = irq_domain_add_linear(np, data->reg_num * 32,
          &imx_irqsteer_domain_ops, data);
 if (!data->domain) {
  dev_err(&pdev->dev, "failed to create IRQ domain\n");
  ret = -ENOMEM;
  goto out;
 }

 if (!data->irq_count || data->irq_count > CHAN_MAX_OUTPUT_INT) {
  ret = -EINVAL;
  goto out;
 }

 for (i = 0; i < data->irq_count; i++) {
  data->irq[i] = irq_of_parse_and_map(np, i);
  if (!data->irq[i]) {
   ret = -EINVAL;
   goto out;
  }

  irq_set_chained_handler_and_data(data->irq[i],
       imx_irqsteer_irq_handler,
       data);
 }

 platform_set_drvdata(pdev, data);

 return 0;
out:
 clk_disable_unprepare(data->ipg_clk);
 return ret;
}
