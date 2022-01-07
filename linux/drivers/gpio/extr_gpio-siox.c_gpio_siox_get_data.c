
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct siox_device {int dev; } ;
struct irq_domain {int dummy; } ;
struct TYPE_3__ {struct irq_domain* domain; } ;
struct TYPE_4__ {TYPE_1__ irq; } ;
struct gpio_siox_ddata {int* getdata; int* irq_type; int irq_status; int irq_enable; int irqlock; TYPE_2__ gchip; int lock; } ;


 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_EDGE_RISING ;
 int IRQ_TYPE_LEVEL_HIGH ;
 int IRQ_TYPE_LEVEL_LOW ;
 struct gpio_siox_ddata* dev_get_drvdata (int *) ;
 int handle_nested_irq (unsigned int) ;
 unsigned int irq_find_mapping (struct irq_domain*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int gpio_siox_get_data(struct siox_device *sdevice, const u8 buf[])
{
 struct gpio_siox_ddata *ddata = dev_get_drvdata(&sdevice->dev);
 size_t offset;
 u32 trigger;

 mutex_lock(&ddata->lock);

 spin_lock_irq(&ddata->irqlock);

 for (offset = 0; offset < 12; ++offset) {
  unsigned int bitpos = 11 - offset;
  unsigned int gpiolevel = buf[bitpos / 8] & (1 << bitpos % 8);
  unsigned int prev_level =
   ddata->getdata[bitpos / 8] & (1 << (bitpos % 8));
  u32 irq_type = ddata->irq_type[offset];

  if (gpiolevel) {
   if ((irq_type & IRQ_TYPE_LEVEL_HIGH) ||
       ((irq_type & IRQ_TYPE_EDGE_RISING) && !prev_level))
    ddata->irq_status |= 1 << offset;
  } else {
   if ((irq_type & IRQ_TYPE_LEVEL_LOW) ||
       ((irq_type & IRQ_TYPE_EDGE_FALLING) && prev_level))
    ddata->irq_status |= 1 << offset;
  }
 }

 trigger = ddata->irq_status & ddata->irq_enable;

 spin_unlock_irq(&ddata->irqlock);

 ddata->getdata[0] = buf[0];
 ddata->getdata[1] = buf[1];
 ddata->getdata[2] = buf[2];

 mutex_unlock(&ddata->lock);

 for (offset = 0; offset < 12; ++offset) {
  if (trigger & (1 << offset)) {
   struct irq_domain *irqdomain = ddata->gchip.irq.domain;
   unsigned int irq = irq_find_mapping(irqdomain, offset);






   spin_lock_irq(&ddata->irqlock);
   ddata->irq_status &= ~(1 << offset);
   spin_unlock_irq(&ddata->irqlock);

   handle_nested_irq(irq);
  }
 }

 return 0;
}
