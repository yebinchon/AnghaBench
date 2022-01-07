
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int parent; } ;
struct adnp {int reg_shift; int* irq_enable; int* irq_level; int* irq_rise; int* irq_fall; int* irq_high; int* irq_low; TYPE_1__* client; int irq_lock; struct gpio_chip gpio; } ;
struct TYPE_2__ {int irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GPIO_IER (struct adnp*) ;
 scalar_t__ GPIO_PLR (struct adnp*) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int IRQ_TYPE_NONE ;
 int adnp_irq ;
 int adnp_irq_chip ;
 int adnp_read (struct adnp*,scalar_t__,int*) ;
 int adnp_write (struct adnp*,scalar_t__,int ) ;
 int dev_err (int ,char*,...) ;
 int dev_name (int ) ;
 int* devm_kcalloc (int ,unsigned int,int,int ) ;
 int devm_request_threaded_irq (int ,int ,int *,int ,int,int ,struct adnp*) ;
 int gpiochip_irqchip_add_nested (struct gpio_chip*,int *,int ,int ,int ) ;
 int gpiochip_set_nested_irqchip (struct gpio_chip*,int *,int ) ;
 int handle_simple_irq ;
 int mutex_init (int *) ;

__attribute__((used)) static int adnp_irq_setup(struct adnp *adnp)
{
 unsigned int num_regs = 1 << adnp->reg_shift, i;
 struct gpio_chip *chip = &adnp->gpio;
 int err;

 mutex_init(&adnp->irq_lock);
 adnp->irq_enable = devm_kcalloc(chip->parent, num_regs, 6,
     GFP_KERNEL);
 if (!adnp->irq_enable)
  return -ENOMEM;

 adnp->irq_level = adnp->irq_enable + (num_regs * 1);
 adnp->irq_rise = adnp->irq_enable + (num_regs * 2);
 adnp->irq_fall = adnp->irq_enable + (num_regs * 3);
 adnp->irq_high = adnp->irq_enable + (num_regs * 4);
 adnp->irq_low = adnp->irq_enable + (num_regs * 5);

 for (i = 0; i < num_regs; i++) {




  err = adnp_read(adnp, GPIO_PLR(adnp) + i, &adnp->irq_level[i]);
  if (err < 0)
   return err;


  err = adnp_write(adnp, GPIO_IER(adnp) + i, 0);
  if (err < 0)
   return err;

  adnp->irq_enable[i] = 0x00;
 }

 err = devm_request_threaded_irq(chip->parent, adnp->client->irq,
     ((void*)0), adnp_irq,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     dev_name(chip->parent), adnp);
 if (err != 0) {
  dev_err(chip->parent, "can't request IRQ#%d: %d\n",
   adnp->client->irq, err);
  return err;
 }

 err = gpiochip_irqchip_add_nested(chip,
       &adnp_irq_chip,
       0,
       handle_simple_irq,
       IRQ_TYPE_NONE);
 if (err) {
  dev_err(chip->parent,
   "could not connect irqchip to gpiochip\n");
  return err;
 }

 gpiochip_set_nested_irqchip(chip, &adnp_irq_chip, adnp->client->irq);

 return 0;
}
