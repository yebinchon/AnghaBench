
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_exti_chip_data {TYPE_1__* host_data; } ;
struct TYPE_2__ {scalar_t__ hwlock; } ;


 int hwspin_unlock_raw (scalar_t__) ;

__attribute__((used)) static void stm32_exti_hwspin_unlock(struct stm32_exti_chip_data *chip_data)
{
 if (chip_data->host_data->hwlock)
  hwspin_unlock_raw(chip_data->host_data->hwlock);
}
