
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct gpio_irq_chip {int num_parents; int* parents; int handler; int default_type; int parent_handler; int * chip; } ;
struct TYPE_11__ {int ngpio; int base; struct gpio_irq_chip irq; int free; int request; int owner; TYPE_1__* parent; int label; } ;
struct cdns_gpio_chip {scalar_t__ regs; scalar_t__ pclk; void* bypass_orig; TYPE_4__ gc; } ;


 int BGPIOF_READ_OUTPUT_REG_SET ;
 scalar_t__ CDNS_GPIO_BYPASS_MODE ;
 scalar_t__ CDNS_GPIO_DIRECTION_MODE ;
 scalar_t__ CDNS_GPIO_INPUT_VALUE ;
 scalar_t__ CDNS_GPIO_OUTPUT_EN ;
 scalar_t__ CDNS_GPIO_OUTPUT_VALUE ;
 int EINVAL ;
 int ENOMEM ;
 int GENMASK (int,int ) ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 int bgpio_init (TYPE_4__*,TYPE_1__*,int,scalar_t__,scalar_t__,int *,int *,scalar_t__,int ) ;
 int cdns_gpio_free ;
 int cdns_gpio_irq_handler ;
 int cdns_gpio_irqchip ;
 int cdns_gpio_request ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_name (TYPE_1__*) ;
 scalar_t__ devm_clk_get (TYPE_1__*,int *) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_4__*,struct cdns_gpio_chip*) ;
 int* devm_kcalloc (TYPE_1__*,int,int,int ) ;
 struct cdns_gpio_chip* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int handle_level_irq ;
 void* ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct cdns_gpio_chip*) ;

__attribute__((used)) static int cdns_gpio_probe(struct platform_device *pdev)
{
 struct cdns_gpio_chip *cgpio;
 int ret, irq;
 u32 dir_prev;
 u32 num_gpios = 32;

 cgpio = devm_kzalloc(&pdev->dev, sizeof(*cgpio), GFP_KERNEL);
 if (!cgpio)
  return -ENOMEM;

 cgpio->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(cgpio->regs))
  return PTR_ERR(cgpio->regs);

 of_property_read_u32(pdev->dev.of_node, "ngpios", &num_gpios);

 if (num_gpios > 32) {
  dev_err(&pdev->dev, "ngpios must be less or equal 32\n");
  return -EINVAL;
 }
 dir_prev = ioread32(cgpio->regs + CDNS_GPIO_DIRECTION_MODE);
 iowrite32(GENMASK(num_gpios - 1, 0),
    cgpio->regs + CDNS_GPIO_DIRECTION_MODE);

 ret = bgpio_init(&cgpio->gc, &pdev->dev, 4,
    cgpio->regs + CDNS_GPIO_INPUT_VALUE,
    cgpio->regs + CDNS_GPIO_OUTPUT_VALUE,
    ((void*)0),
    ((void*)0),
    cgpio->regs + CDNS_GPIO_DIRECTION_MODE,
    BGPIOF_READ_OUTPUT_REG_SET);
 if (ret) {
  dev_err(&pdev->dev, "Failed to register generic gpio, %d\n",
   ret);
  goto err_revert_dir;
 }

 cgpio->gc.label = dev_name(&pdev->dev);
 cgpio->gc.ngpio = num_gpios;
 cgpio->gc.parent = &pdev->dev;
 cgpio->gc.base = -1;
 cgpio->gc.owner = THIS_MODULE;
 cgpio->gc.request = cdns_gpio_request;
 cgpio->gc.free = cdns_gpio_free;

 cgpio->pclk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(cgpio->pclk)) {
  ret = PTR_ERR(cgpio->pclk);
  dev_err(&pdev->dev,
   "Failed to retrieve peripheral clock, %d\n", ret);
  goto err_revert_dir;
 }

 ret = clk_prepare_enable(cgpio->pclk);
 if (ret) {
  dev_err(&pdev->dev,
   "Failed to enable the peripheral clock, %d\n", ret);
  goto err_revert_dir;
 }




 irq = platform_get_irq(pdev, 0);
 if (irq >= 0) {
  struct gpio_irq_chip *girq;

  girq = &cgpio->gc.irq;
  girq->chip = &cdns_gpio_irqchip;
  girq->parent_handler = cdns_gpio_irq_handler;
  girq->num_parents = 1;
  girq->parents = devm_kcalloc(&pdev->dev, 1,
          sizeof(*girq->parents),
          GFP_KERNEL);
  if (!girq->parents) {
   ret = -ENOMEM;
   goto err_disable_clk;
  }
  girq->parents[0] = irq;
  girq->default_type = IRQ_TYPE_NONE;
  girq->handler = handle_level_irq;
 }

 ret = devm_gpiochip_add_data(&pdev->dev, &cgpio->gc, cgpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  goto err_disable_clk;
 }

 cgpio->bypass_orig = ioread32(cgpio->regs + CDNS_GPIO_BYPASS_MODE);




 iowrite32(GENMASK(num_gpios - 1, 0),
    cgpio->regs + CDNS_GPIO_OUTPUT_EN);
 iowrite32(0, cgpio->regs + CDNS_GPIO_BYPASS_MODE);

 platform_set_drvdata(pdev, cgpio);
 return 0;

err_disable_clk:
 clk_disable_unprepare(cgpio->pclk);

err_revert_dir:
 iowrite32(dir_prev, cgpio->regs + CDNS_GPIO_DIRECTION_MODE);

 return ret;
}
