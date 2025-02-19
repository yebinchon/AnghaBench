
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct irq_chip {int * irq_set_wake; } ;
struct gpio_irq_chip {int num_parents; int first; int * parents; int default_type; int handler; struct irq_chip* chip; } ;
struct TYPE_7__ {char* label; int base; int * parent; struct gpio_irq_chip irq; scalar_t__ ngpio; int set_multiple; int set; int set_config; int direction_output; int get_multiple; int get; int direction_input; int get_direction; int free; int request; } ;
struct gpio_bank {scalar_t__ width; scalar_t__ is_mpuio; TYPE_3__ chip; int irq; TYPE_1__* regs; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ wkup_en; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_TYPE_NONE ;
 int OMAP_MPUIO (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int devm_irq_alloc_descs (int *,int,int ,scalar_t__,int ) ;
 char* devm_kasprintf (int *,int ,char*,int,scalar_t__) ;
 int devm_request_irq (int *,int ,int ,int ,int ,struct gpio_bank*) ;
 int gpiochip_add_data (TYPE_3__*,struct gpio_bank*) ;
 int gpiochip_remove (TYPE_3__*) ;
 int handle_bad_irq ;
 int omap_gpio_free ;
 int omap_gpio_get ;
 int omap_gpio_get_direction ;
 int omap_gpio_get_multiple ;
 int omap_gpio_input ;
 int omap_gpio_irq_handler ;
 int omap_gpio_output ;
 int omap_gpio_request ;
 int omap_gpio_set ;
 int omap_gpio_set_config ;
 int omap_gpio_set_multiple ;
 TYPE_2__ omap_mpuio_device ;

__attribute__((used)) static int omap_gpio_chip_init(struct gpio_bank *bank, struct irq_chip *irqc)
{
 struct gpio_irq_chip *irq;
 static int gpio;
 const char *label;
 int irq_base = 0;
 int ret;





 bank->chip.request = omap_gpio_request;
 bank->chip.free = omap_gpio_free;
 bank->chip.get_direction = omap_gpio_get_direction;
 bank->chip.direction_input = omap_gpio_input;
 bank->chip.get = omap_gpio_get;
 bank->chip.get_multiple = omap_gpio_get_multiple;
 bank->chip.direction_output = omap_gpio_output;
 bank->chip.set_config = omap_gpio_set_config;
 bank->chip.set = omap_gpio_set;
 bank->chip.set_multiple = omap_gpio_set_multiple;
 if (bank->is_mpuio) {
  bank->chip.label = "mpuio";
  if (bank->regs->wkup_en)
   bank->chip.parent = &omap_mpuio_device.dev;
  bank->chip.base = OMAP_MPUIO(0);
 } else {
  label = devm_kasprintf(bank->chip.parent, GFP_KERNEL, "gpio-%d-%d",
           gpio, gpio + bank->width - 1);
  if (!label)
   return -ENOMEM;
  bank->chip.label = label;
  bank->chip.base = gpio;
 }
 bank->chip.ngpio = bank->width;
 if (bank->is_mpuio && !bank->regs->wkup_en)
  irqc->irq_set_wake = ((void*)0);

 irq = &bank->chip.irq;
 irq->chip = irqc;
 irq->handler = handle_bad_irq;
 irq->default_type = IRQ_TYPE_NONE;
 irq->num_parents = 1;
 irq->parents = &bank->irq;
 irq->first = irq_base;

 ret = gpiochip_add_data(&bank->chip, bank);
 if (ret) {
  dev_err(bank->chip.parent,
   "Could not register gpio chip %d\n", ret);
  return ret;
 }

 ret = devm_request_irq(bank->chip.parent, bank->irq,
          omap_gpio_irq_handler,
          0, dev_name(bank->chip.parent), bank);
 if (ret)
  gpiochip_remove(&bank->chip);

 if (!bank->is_mpuio)
  gpio += bank->width;

 return ret;
}
