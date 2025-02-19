
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* label; int base; int set_multiple; int set; int get_multiple; int get; int direction_output; int direction_input; int get_direction; int names; int ngpio; int owner; struct device* parent; } ;
struct ws16c48_gpio {TYPE_1__ chip; int lock; scalar_t__ base; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int IRQ_TYPE_NONE ;
 int THIS_MODULE ;
 scalar_t__ WS16C48_EXTENT ;
 int WS16C48_NGPIO ;
 scalar_t__* base ;
 int dev_err (struct device*,char*,int,...) ;
 char* dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,struct ws16c48_gpio*) ;
 struct ws16c48_gpio* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char const* const,struct ws16c48_gpio*) ;
 int devm_request_region (struct device*,scalar_t__,scalar_t__,char const* const) ;
 int gpiochip_irqchip_add (TYPE_1__*,int *,int ,int ,int ) ;
 int handle_edge_irq ;
 int * irq ;
 int outb (int,scalar_t__) ;
 int raw_spin_lock_init (int *) ;
 int ws16c48_gpio_direction_input ;
 int ws16c48_gpio_direction_output ;
 int ws16c48_gpio_get ;
 int ws16c48_gpio_get_direction ;
 int ws16c48_gpio_get_multiple ;
 int ws16c48_gpio_set ;
 int ws16c48_gpio_set_multiple ;
 int ws16c48_irq_handler ;
 int ws16c48_irqchip ;
 int ws16c48_names ;

__attribute__((used)) static int ws16c48_probe(struct device *dev, unsigned int id)
{
 struct ws16c48_gpio *ws16c48gpio;
 const char *const name = dev_name(dev);
 int err;

 ws16c48gpio = devm_kzalloc(dev, sizeof(*ws16c48gpio), GFP_KERNEL);
 if (!ws16c48gpio)
  return -ENOMEM;

 if (!devm_request_region(dev, base[id], WS16C48_EXTENT, name)) {
  dev_err(dev, "Unable to lock port addresses (0x%X-0x%X)\n",
   base[id], base[id] + WS16C48_EXTENT);
  return -EBUSY;
 }

 ws16c48gpio->chip.label = name;
 ws16c48gpio->chip.parent = dev;
 ws16c48gpio->chip.owner = THIS_MODULE;
 ws16c48gpio->chip.base = -1;
 ws16c48gpio->chip.ngpio = WS16C48_NGPIO;
 ws16c48gpio->chip.names = ws16c48_names;
 ws16c48gpio->chip.get_direction = ws16c48_gpio_get_direction;
 ws16c48gpio->chip.direction_input = ws16c48_gpio_direction_input;
 ws16c48gpio->chip.direction_output = ws16c48_gpio_direction_output;
 ws16c48gpio->chip.get = ws16c48_gpio_get;
 ws16c48gpio->chip.get_multiple = ws16c48_gpio_get_multiple;
 ws16c48gpio->chip.set = ws16c48_gpio_set;
 ws16c48gpio->chip.set_multiple = ws16c48_gpio_set_multiple;
 ws16c48gpio->base = base[id];

 raw_spin_lock_init(&ws16c48gpio->lock);

 err = devm_gpiochip_add_data(dev, &ws16c48gpio->chip, ws16c48gpio);
 if (err) {
  dev_err(dev, "GPIO registering failed (%d)\n", err);
  return err;
 }


 outb(0x80, base[id] + 7);
 outb(0, base[id] + 8);
 outb(0, base[id] + 9);
 outb(0, base[id] + 10);
 outb(0xC0, base[id] + 7);

 err = gpiochip_irqchip_add(&ws16c48gpio->chip, &ws16c48_irqchip, 0,
  handle_edge_irq, IRQ_TYPE_NONE);
 if (err) {
  dev_err(dev, "Could not add irqchip (%d)\n", err);
  return err;
 }

 err = devm_request_irq(dev, irq[id], ws16c48_irq_handler, IRQF_SHARED,
  name, ws16c48gpio);
 if (err) {
  dev_err(dev, "IRQ handler registering failed (%d)\n", err);
  return err;
 }

 return 0;
}
