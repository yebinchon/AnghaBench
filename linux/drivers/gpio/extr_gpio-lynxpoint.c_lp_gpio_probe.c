
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct gpio_irq_chip {int num_parents; unsigned int* parents; int handler; int default_type; int parent_handler; int init_hw; int * chip; } ;
struct gpio_chip {int base; int can_sleep; struct gpio_irq_chip irq; struct device* parent; int ngpio; int set; int get; int direction_output; int direction_input; int free; int request; int owner; int label; } ;
struct lp_gpio {struct gpio_chip chip; int lock; scalar_t__ reg_base; struct platform_device* pdev; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 int IORESOURCE_IRQ ;
 int IRQ_TYPE_NONE ;
 int LP_NUM_GPIO ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,struct gpio_chip*,struct lp_gpio*) ;
 unsigned int* devm_kcalloc (struct device*,int,int,int ) ;
 struct lp_gpio* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_region (struct device*,scalar_t__,unsigned long,char*) ;
 int handle_bad_irq ;
 int lp_gpio_direction_input ;
 int lp_gpio_direction_output ;
 int lp_gpio_free ;
 int lp_gpio_get ;
 int lp_gpio_irq_handler ;
 int lp_gpio_irq_init_hw ;
 int lp_gpio_request ;
 int lp_gpio_set ;
 int lp_irqchip ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct lp_gpio*) ;
 int pm_runtime_enable (struct device*) ;
 unsigned long resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int lp_gpio_probe(struct platform_device *pdev)
{
 struct lp_gpio *lg;
 struct gpio_chip *gc;
 struct resource *io_rc, *irq_rc;
 struct device *dev = &pdev->dev;
 unsigned long reg_len;
 int ret = -ENODEV;

 lg = devm_kzalloc(dev, sizeof(struct lp_gpio), GFP_KERNEL);
 if (!lg)
  return -ENOMEM;

 lg->pdev = pdev;
 platform_set_drvdata(pdev, lg);

 io_rc = platform_get_resource(pdev, IORESOURCE_IO, 0);
 irq_rc = platform_get_resource(pdev, IORESOURCE_IRQ, 0);

 if (!io_rc) {
  dev_err(dev, "missing IO resources\n");
  return -EINVAL;
 }

 lg->reg_base = io_rc->start;
 reg_len = resource_size(io_rc);

 if (!devm_request_region(dev, lg->reg_base, reg_len, "lp-gpio")) {
  dev_err(dev, "failed requesting IO region 0x%x\n",
   (unsigned int)lg->reg_base);
  return -EBUSY;
 }

 spin_lock_init(&lg->lock);

 gc = &lg->chip;
 gc->label = dev_name(dev);
 gc->owner = THIS_MODULE;
 gc->request = lp_gpio_request;
 gc->free = lp_gpio_free;
 gc->direction_input = lp_gpio_direction_input;
 gc->direction_output = lp_gpio_direction_output;
 gc->get = lp_gpio_get;
 gc->set = lp_gpio_set;
 gc->base = -1;
 gc->ngpio = LP_NUM_GPIO;
 gc->can_sleep = 0;
 gc->parent = dev;


 if (irq_rc && irq_rc->start) {
  struct gpio_irq_chip *girq;

  girq = &gc->irq;
  girq->chip = &lp_irqchip;
  girq->init_hw = lp_gpio_irq_init_hw;
  girq->parent_handler = lp_gpio_irq_handler;
  girq->num_parents = 1;
  girq->parents = devm_kcalloc(&pdev->dev, girq->num_parents,
          sizeof(*girq->parents),
          GFP_KERNEL);
  if (!girq->parents)
   return -ENOMEM;
  girq->parents[0] = (unsigned)irq_rc->start;
  girq->default_type = IRQ_TYPE_NONE;
  girq->handler = handle_bad_irq;
 }

 ret = devm_gpiochip_add_data(dev, gc, lg);
 if (ret) {
  dev_err(dev, "failed adding lp-gpio chip\n");
  return ret;
 }

 pm_runtime_enable(dev);

 return 0;
}
