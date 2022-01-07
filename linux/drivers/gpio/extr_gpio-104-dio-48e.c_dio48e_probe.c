
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* label; int base; int set_multiple; int set; int get_multiple; int get; int direction_output; int direction_input; int get_direction; int names; int ngpio; int owner; struct device* parent; } ;
struct dio48e_gpio {TYPE_1__ chip; int lock; scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ DIO48E_EXTENT ;
 int DIO48E_NGPIO ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 int THIS_MODULE ;
 scalar_t__* base ;
 int dev_err (struct device*,char*,int,...) ;
 char* dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,struct dio48e_gpio*) ;
 struct dio48e_gpio* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char const* const,struct dio48e_gpio*) ;
 int devm_request_region (struct device*,scalar_t__,scalar_t__,char const* const) ;
 int dio48e_gpio_direction_input ;
 int dio48e_gpio_direction_output ;
 int dio48e_gpio_get ;
 int dio48e_gpio_get_direction ;
 int dio48e_gpio_get_multiple ;
 int dio48e_gpio_set ;
 int dio48e_gpio_set_multiple ;
 int dio48e_irq_handler ;
 int dio48e_irqchip ;
 int dio48e_names ;
 int gpiochip_irqchip_add (TYPE_1__*,int *,int ,int ,int ) ;
 int handle_edge_irq ;
 int inb (scalar_t__) ;
 int * irq ;
 int outb (int,scalar_t__) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int dio48e_probe(struct device *dev, unsigned int id)
{
 struct dio48e_gpio *dio48egpio;
 const char *const name = dev_name(dev);
 int err;

 dio48egpio = devm_kzalloc(dev, sizeof(*dio48egpio), GFP_KERNEL);
 if (!dio48egpio)
  return -ENOMEM;

 if (!devm_request_region(dev, base[id], DIO48E_EXTENT, name)) {
  dev_err(dev, "Unable to lock port addresses (0x%X-0x%X)\n",
   base[id], base[id] + DIO48E_EXTENT);
  return -EBUSY;
 }

 dio48egpio->chip.label = name;
 dio48egpio->chip.parent = dev;
 dio48egpio->chip.owner = THIS_MODULE;
 dio48egpio->chip.base = -1;
 dio48egpio->chip.ngpio = DIO48E_NGPIO;
 dio48egpio->chip.names = dio48e_names;
 dio48egpio->chip.get_direction = dio48e_gpio_get_direction;
 dio48egpio->chip.direction_input = dio48e_gpio_direction_input;
 dio48egpio->chip.direction_output = dio48e_gpio_direction_output;
 dio48egpio->chip.get = dio48e_gpio_get;
 dio48egpio->chip.get_multiple = dio48e_gpio_get_multiple;
 dio48egpio->chip.set = dio48e_gpio_set;
 dio48egpio->chip.set_multiple = dio48e_gpio_set_multiple;
 dio48egpio->base = base[id];

 raw_spin_lock_init(&dio48egpio->lock);

 err = devm_gpiochip_add_data(dev, &dio48egpio->chip, dio48egpio);
 if (err) {
  dev_err(dev, "GPIO registering failed (%d)\n", err);
  return err;
 }


 outb(0x80, base[id] + 3);
 outb(0x00, base[id]);
 outb(0x00, base[id] + 1);
 outb(0x00, base[id] + 2);
 outb(0x00, base[id] + 3);
 outb(0x80, base[id] + 7);
 outb(0x00, base[id] + 4);
 outb(0x00, base[id] + 5);
 outb(0x00, base[id] + 6);
 outb(0x00, base[id] + 7);


 inb(base[id] + 0xB);

 err = gpiochip_irqchip_add(&dio48egpio->chip, &dio48e_irqchip, 0,
  handle_edge_irq, IRQ_TYPE_NONE);
 if (err) {
  dev_err(dev, "Could not add irqchip (%d)\n", err);
  return err;
 }

 err = devm_request_irq(dev, irq[id], dio48e_irq_handler, 0, name,
  dio48egpio);
 if (err) {
  dev_err(dev, "IRQ handler registering failed (%d)\n", err);
  return err;
 }

 return 0;
}
