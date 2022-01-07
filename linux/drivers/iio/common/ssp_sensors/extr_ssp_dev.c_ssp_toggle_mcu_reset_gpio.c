
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_data {int mcu_reset_gpio; } ;


 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ssp_toggle_mcu_reset_gpio(struct ssp_data *data)
{
 gpio_set_value(data->mcu_reset_gpio, 0);
 usleep_range(1000, 1200);
 gpio_set_value(data->mcu_reset_gpio, 1);
 msleep(50);
}
