
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zynq_gpio {TYPE_1__* p_data; } ;
struct TYPE_2__ {int quirks; } ;


 int ZYNQ_GPIO_QUIRK_IS_ZYNQ ;

__attribute__((used)) static int zynq_gpio_is_zynq(struct zynq_gpio *gpio)
{
 return !!(gpio->p_data->quirks & ZYNQ_GPIO_QUIRK_IS_ZYNQ);
}
