
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw_hpd {int dummy; } ;
struct hw_gpio_pin {int dummy; } ;
struct TYPE_3__ {int delay_on_connect; int delay_on_disconnect; } ;
struct TYPE_4__ {TYPE_1__ hpd; } ;
struct gpio_config_data {TYPE_2__ config; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;


 int DC_HPD_CONNECT_INT_DELAY ;
 int DC_HPD_DISCONNECT_INT_DELAY ;
 int GPIO_RESULT_INVALID_DATA ;
 int GPIO_RESULT_OK ;
 struct hw_hpd* HW_HPD_FROM_BASE (struct hw_gpio_pin*) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int toggle_filt_cntl ;

__attribute__((used)) static enum gpio_result set_config(
 struct hw_gpio_pin *ptr,
 const struct gpio_config_data *config_data)
{
 struct hw_hpd *hpd = HW_HPD_FROM_BASE(ptr);

 if (!config_data)
  return GPIO_RESULT_INVALID_DATA;

 REG_UPDATE_2(toggle_filt_cntl,
  DC_HPD_CONNECT_INT_DELAY, config_data->config.hpd.delay_on_connect / 10,
  DC_HPD_DISCONNECT_INT_DELAY, config_data->config.hpd.delay_on_disconnect / 10);

 return GPIO_RESULT_OK;
}
