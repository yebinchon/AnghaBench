
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct gpio_irq_chip {int num_parents; int* parents; int handler; int default_type; int parent_handler; int * chip; } ;
struct gpio_chip {struct gpio_irq_chip irq; int ngpio; int base; int get_direction; int direction_output; int direction_input; int free; int request; int set; int get; TYPE_2__* parent; int owner; int label; } ;
struct zynq_gpio {scalar_t__ irq; scalar_t__ clk; scalar_t__ base_addr; TYPE_1__* p_data; struct gpio_chip chip; } ;
struct TYPE_12__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_11__ {int max_bank; int ngpio; int label; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 scalar_t__ ZYNQ_GPIO_INTDIS_OFFSET (int) ;
 int ZYNQ_GPIO_IXR_DISABLE_ALL ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (TYPE_2__*,char*) ;
 scalar_t__ devm_clk_get (TYPE_2__*,int *) ;
 int* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 struct zynq_gpio* devm_kzalloc (TYPE_2__*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int gpiochip_add_data (struct gpio_chip*,struct zynq_gpio*) ;
 int handle_level_irq ;
 int of_alias_get_id (int ,char*) ;
 struct of_device_id* of_match_node (int ,int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct zynq_gpio*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_get_sync (TYPE_2__*) ;
 int pm_runtime_put (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 int writel_relaxed (int ,scalar_t__) ;
 int zynq_gpio_dir_in ;
 int zynq_gpio_dir_out ;
 int zynq_gpio_edge_irqchip ;
 int zynq_gpio_free ;
 int zynq_gpio_get_direction ;
 int zynq_gpio_get_value ;
 int zynq_gpio_irqhandler ;
 int zynq_gpio_of_match ;
 int zynq_gpio_request ;
 int zynq_gpio_set_value ;

__attribute__((used)) static int zynq_gpio_probe(struct platform_device *pdev)
{
 int ret, bank_num;
 struct zynq_gpio *gpio;
 struct gpio_chip *chip;
 struct gpio_irq_chip *girq;
 const struct of_device_id *match;

 gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 match = of_match_node(zynq_gpio_of_match, pdev->dev.of_node);
 if (!match) {
  dev_err(&pdev->dev, "of_match_node() failed\n");
  return -EINVAL;
 }
 gpio->p_data = match->data;
 platform_set_drvdata(pdev, gpio);

 gpio->base_addr = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(gpio->base_addr))
  return PTR_ERR(gpio->base_addr);

 gpio->irq = platform_get_irq(pdev, 0);
 if (gpio->irq < 0)
  return gpio->irq;


 chip = &gpio->chip;
 chip->label = gpio->p_data->label;
 chip->owner = THIS_MODULE;
 chip->parent = &pdev->dev;
 chip->get = zynq_gpio_get_value;
 chip->set = zynq_gpio_set_value;
 chip->request = zynq_gpio_request;
 chip->free = zynq_gpio_free;
 chip->direction_input = zynq_gpio_dir_in;
 chip->direction_output = zynq_gpio_dir_out;
 chip->get_direction = zynq_gpio_get_direction;
 chip->base = of_alias_get_id(pdev->dev.of_node, "gpio");
 chip->ngpio = gpio->p_data->ngpio;


 gpio->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(gpio->clk)) {
  dev_err(&pdev->dev, "input clock not found.\n");
  return PTR_ERR(gpio->clk);
 }
 ret = clk_prepare_enable(gpio->clk);
 if (ret) {
  dev_err(&pdev->dev, "Unable to enable clock.\n");
  return ret;
 }

 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0)
  goto err_pm_dis;


 for (bank_num = 0; bank_num < gpio->p_data->max_bank; bank_num++)
  writel_relaxed(ZYNQ_GPIO_IXR_DISABLE_ALL, gpio->base_addr +
          ZYNQ_GPIO_INTDIS_OFFSET(bank_num));


 girq = &chip->irq;
 girq->chip = &zynq_gpio_edge_irqchip;
 girq->parent_handler = zynq_gpio_irqhandler;
 girq->num_parents = 1;
 girq->parents = devm_kcalloc(&pdev->dev, 1,
         sizeof(*girq->parents),
         GFP_KERNEL);
 if (!girq->parents) {
  ret = -ENOMEM;
  goto err_pm_put;
 }
 girq->parents[0] = gpio->irq;
 girq->default_type = IRQ_TYPE_NONE;
 girq->handler = handle_level_irq;


 ret = gpiochip_add_data(chip, gpio);
 if (ret) {
  dev_err(&pdev->dev, "Failed to add gpio chip\n");
  goto err_pm_put;
 }

 pm_runtime_put(&pdev->dev);

 return 0;

err_pm_put:
 pm_runtime_put(&pdev->dev);
err_pm_dis:
 pm_runtime_disable(&pdev->dev);
 clk_disable_unprepare(gpio->clk);

 return ret;
}
