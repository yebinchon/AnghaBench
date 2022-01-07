
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_irq_chip {int num_parents; int* parents; int handler; int default_type; int parent_handler; TYPE_1__* chip; } ;
struct TYPE_4__ {int base; struct gpio_irq_chip irq; int owner; struct device* parent; void* label; int ngpio; int set; int get; int direction_output; int direction_input; int get_direction; int free; int request; } ;
struct TYPE_3__ {int irq_set_wake; int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; void* name; } ;
struct pl061 {int parent_irq; TYPE_2__ gc; TYPE_1__ irq_chip; scalar_t__ base; int lock; } ;
struct device {int of_node; } ;
struct amba_id {int dummy; } ;
struct amba_device {int* irq; struct device dev; int res; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GPIOIE ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PL061_GPIO_NR ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 int amba_set_drvdata (struct amba_device*,struct pl061*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 void* dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_2__*,struct pl061*) ;
 scalar_t__ devm_ioremap_resource (struct device*,int *) ;
 int* devm_kcalloc (struct device*,int,int,int ) ;
 struct pl061* devm_kzalloc (struct device*,int,int ) ;
 int gpiochip_generic_free ;
 int gpiochip_generic_request ;
 int handle_bad_irq ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int pl061_direction_input ;
 int pl061_direction_output ;
 int pl061_get_direction ;
 int pl061_get_value ;
 int pl061_irq_ack ;
 int pl061_irq_handler ;
 int pl061_irq_mask ;
 int pl061_irq_set_wake ;
 int pl061_irq_type ;
 int pl061_irq_unmask ;
 int pl061_set_value ;
 int raw_spin_lock_init (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int pl061_probe(struct amba_device *adev, const struct amba_id *id)
{
 struct device *dev = &adev->dev;
 struct pl061 *pl061;
 struct gpio_irq_chip *girq;
 int ret, irq;

 pl061 = devm_kzalloc(dev, sizeof(*pl061), GFP_KERNEL);
 if (pl061 == ((void*)0))
  return -ENOMEM;

 pl061->base = devm_ioremap_resource(dev, &adev->res);
 if (IS_ERR(pl061->base))
  return PTR_ERR(pl061->base);

 raw_spin_lock_init(&pl061->lock);
 if (of_property_read_bool(dev->of_node, "gpio-ranges")) {
  pl061->gc.request = gpiochip_generic_request;
  pl061->gc.free = gpiochip_generic_free;
 }

 pl061->gc.base = -1;
 pl061->gc.get_direction = pl061_get_direction;
 pl061->gc.direction_input = pl061_direction_input;
 pl061->gc.direction_output = pl061_direction_output;
 pl061->gc.get = pl061_get_value;
 pl061->gc.set = pl061_set_value;
 pl061->gc.ngpio = PL061_GPIO_NR;
 pl061->gc.label = dev_name(dev);
 pl061->gc.parent = dev;
 pl061->gc.owner = THIS_MODULE;




 pl061->irq_chip.name = dev_name(dev);
 pl061->irq_chip.irq_ack = pl061_irq_ack;
 pl061->irq_chip.irq_mask = pl061_irq_mask;
 pl061->irq_chip.irq_unmask = pl061_irq_unmask;
 pl061->irq_chip.irq_set_type = pl061_irq_type;
 pl061->irq_chip.irq_set_wake = pl061_irq_set_wake;

 writeb(0, pl061->base + GPIOIE);
 irq = adev->irq[0];
 if (irq < 0) {
  dev_err(&adev->dev, "invalid IRQ\n");
  return -ENODEV;
 }
 pl061->parent_irq = irq;

 girq = &pl061->gc.irq;
 girq->chip = &pl061->irq_chip;
 girq->parent_handler = pl061_irq_handler;
 girq->num_parents = 1;
 girq->parents = devm_kcalloc(dev, 1, sizeof(*girq->parents),
         GFP_KERNEL);
 if (!girq->parents)
  return -ENOMEM;
 girq->parents[0] = irq;
 girq->default_type = IRQ_TYPE_NONE;
 girq->handler = handle_bad_irq;

 ret = devm_gpiochip_add_data(dev, &pl061->gc, pl061);
 if (ret)
  return ret;

 amba_set_drvdata(adev, pl061);
 dev_info(dev, "PL061 GPIO chip registered\n");

 return 0;
}
