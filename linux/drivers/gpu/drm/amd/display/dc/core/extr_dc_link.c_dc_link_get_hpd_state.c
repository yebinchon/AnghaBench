
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_link {int hpd_gpio; } ;


 int dal_gpio_get_value (int ,int*) ;
 int dal_gpio_lock_pin (int ) ;
 int dal_gpio_unlock_pin (int ) ;

bool dc_link_get_hpd_state(struct dc_link *dc_link)
{
 uint32_t state;

 dal_gpio_lock_pin(dc_link->hpd_gpio);
 dal_gpio_get_value(dc_link->hpd_gpio, &state);
 dal_gpio_unlock_pin(dc_link->hpd_gpio);

 return state;
}
