
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct meson_gpio_irq_controller {int dummy; } ;
struct irq_data {TYPE_1__* domain; } ;
struct TYPE_2__ {struct meson_gpio_irq_controller* host_data; } ;


 int irq_chip_set_type_parent (struct irq_data*,int ) ;
 int * irq_data_get_irq_chip_data (struct irq_data*) ;
 int meson_gpio_irq_type_output (unsigned int) ;
 int meson_gpio_irq_type_setup (struct meson_gpio_irq_controller*,unsigned int,int *) ;

__attribute__((used)) static int meson_gpio_irq_set_type(struct irq_data *data, unsigned int type)
{
 struct meson_gpio_irq_controller *ctl = data->domain->host_data;
 u32 *channel_hwirq = irq_data_get_irq_chip_data(data);
 int ret;

 ret = meson_gpio_irq_type_setup(ctl, type, channel_hwirq);
 if (ret)
  return ret;

 return irq_chip_set_type_parent(data,
     meson_gpio_irq_type_output(type));
}
