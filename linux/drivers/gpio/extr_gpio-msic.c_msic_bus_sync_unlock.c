
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct msic_gpio {int trig_type; int buslock; scalar_t__ trig_change_mask; } ;
struct irq_data {int dummy; } ;


 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_EDGE_RISING ;
 int MSIC_GPIO_INTCNT_MASK ;
 int MSIC_GPIO_TRIG_FALL ;
 int MSIC_GPIO_TRIG_RISE ;
 int __ffs (scalar_t__) ;
 int intel_msic_reg_update (int,int ,int ) ;
 struct msic_gpio* irq_data_get_irq_chip_data (struct irq_data*) ;
 int msic_gpio_to_ireg (int) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void msic_bus_sync_unlock(struct irq_data *data)
{
 struct msic_gpio *mg = irq_data_get_irq_chip_data(data);
 int offset;
 int reg;
 u8 trig = 0;




 if (mg->trig_change_mask) {
  offset = __ffs(mg->trig_change_mask);

  reg = msic_gpio_to_ireg(offset);
  if (reg < 0)
   goto out;

  if (mg->trig_type & IRQ_TYPE_EDGE_RISING)
   trig |= MSIC_GPIO_TRIG_RISE;
  if (mg->trig_type & IRQ_TYPE_EDGE_FALLING)
   trig |= MSIC_GPIO_TRIG_FALL;

  intel_msic_reg_update(reg, trig, MSIC_GPIO_INTCNT_MASK);
  mg->trig_change_mask = 0;
 }
out:
 mutex_unlock(&mg->buslock);
}
