
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct siox_device {struct device dev; } ;
struct gpio_irq_chip {int handler; int default_type; TYPE_1__* chip; } ;
struct TYPE_4__ {int base; int can_sleep; int ngpio; struct gpio_irq_chip irq; int get_direction; int direction_output; int direction_input; int set; int get; int owner; struct device* parent; } ;
struct TYPE_3__ {char* name; int irq_set_type; int irq_unmask; int irq_mask; int irq_ack; } ;
struct gpio_siox_ddata {TYPE_2__ gchip; TYPE_1__ ichip; int irqlock; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct gpio_siox_ddata*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_2__*,int *) ;
 struct gpio_siox_ddata* devm_kzalloc (struct device*,int,int ) ;
 int gpio_siox_direction_input ;
 int gpio_siox_direction_output ;
 int gpio_siox_get ;
 int gpio_siox_get_direction ;
 int gpio_siox_irq_ack ;
 int gpio_siox_irq_mask ;
 int gpio_siox_irq_set_type ;
 int gpio_siox_irq_unmask ;
 int gpio_siox_set ;
 int handle_level_irq ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int gpio_siox_probe(struct siox_device *sdevice)
{
 struct gpio_siox_ddata *ddata;
 struct gpio_irq_chip *girq;
 struct device *dev = &sdevice->dev;
 int ret;

 ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 dev_set_drvdata(dev, ddata);

 mutex_init(&ddata->lock);
 spin_lock_init(&ddata->irqlock);

 ddata->gchip.base = -1;
 ddata->gchip.can_sleep = 1;
 ddata->gchip.parent = dev;
 ddata->gchip.owner = THIS_MODULE;
 ddata->gchip.get = gpio_siox_get;
 ddata->gchip.set = gpio_siox_set;
 ddata->gchip.direction_input = gpio_siox_direction_input;
 ddata->gchip.direction_output = gpio_siox_direction_output;
 ddata->gchip.get_direction = gpio_siox_get_direction;
 ddata->gchip.ngpio = 20;

 ddata->ichip.name = "siox-gpio";
 ddata->ichip.irq_ack = gpio_siox_irq_ack;
 ddata->ichip.irq_mask = gpio_siox_irq_mask;
 ddata->ichip.irq_unmask = gpio_siox_irq_unmask;
 ddata->ichip.irq_set_type = gpio_siox_irq_set_type;

 girq = &ddata->gchip.irq;
 girq->chip = &ddata->ichip;
 girq->default_type = IRQ_TYPE_NONE;
 girq->handler = handle_level_irq;

 ret = devm_gpiochip_add_data(dev, &ddata->gchip, ((void*)0));
 if (ret)
  dev_err(dev, "Failed to register gpio chip (%d)\n", ret);

 return ret;
}
