
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zynq_gpio {TYPE_1__* p_data; } ;
struct TYPE_2__ {int quirks; } ;


 int GPIO_QUIRK_DATA_RO_BUG ;

__attribute__((used)) static int gpio_data_ro_bug(struct zynq_gpio *gpio)
{
 return !!(gpio->p_data->quirks & GPIO_QUIRK_DATA_RO_BUG);
}
