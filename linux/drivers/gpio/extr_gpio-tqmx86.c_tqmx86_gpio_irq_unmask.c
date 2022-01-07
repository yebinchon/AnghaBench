
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct tqmx86_gpio_data {unsigned int* irq_type; int spinlock; } ;
struct irq_data {unsigned int hwirq; } ;


 int TQMX86_GPIIC ;
 unsigned int TQMX86_GPII_BITS ;
 unsigned int TQMX86_GPII_MASK ;
 unsigned int TQMX86_NGPO ;
 struct tqmx86_gpio_data* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int tqmx86_gpio_read (struct tqmx86_gpio_data*,int ) ;
 int tqmx86_gpio_write (struct tqmx86_gpio_data*,unsigned int,int ) ;

__attribute__((used)) static void tqmx86_gpio_irq_unmask(struct irq_data *data)
{
 unsigned int offset = (data->hwirq - TQMX86_NGPO);
 struct tqmx86_gpio_data *gpio = gpiochip_get_data(
  irq_data_get_irq_chip_data(data));
 unsigned long flags;
 u8 gpiic, mask;

 mask = TQMX86_GPII_MASK << (offset * TQMX86_GPII_BITS);

 raw_spin_lock_irqsave(&gpio->spinlock, flags);
 gpiic = tqmx86_gpio_read(gpio, TQMX86_GPIIC);
 gpiic &= ~mask;
 gpiic |= gpio->irq_type[offset] << (offset * TQMX86_GPII_BITS);
 tqmx86_gpio_write(gpio, gpiic, TQMX86_GPIIC);
 raw_spin_unlock_irqrestore(&gpio->spinlock, flags);
}
