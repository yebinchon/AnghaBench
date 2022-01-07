
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct resource_pool {int i2c_hw_buffer_in_use; struct dce_i2c_hw** hw_i2cs; TYPE_2__* res_cap; } ;
struct TYPE_3__ {scalar_t__ hw_supported; } ;
struct ddc {TYPE_1__ hw_info; } ;
struct dce_i2c_hw {int original_speed; struct ddc* ddc; } ;
typedef enum gpio_result { ____Placeholder_gpio_result } gpio_result ;
typedef enum gpio_ddc_line { ____Placeholder_gpio_ddc_line } gpio_ddc_line ;
struct TYPE_4__ {int num_ddc; } ;


 int GPIO_DDC_CONFIG_TYPE_MODE_I2C ;
 int GPIO_MODE_HARDWARE ;
 int GPIO_RESULT_OK ;
 int dal_ddc_get_line (struct ddc*) ;
 int dal_ddc_open (struct ddc*,int ,int ) ;
 int get_speed (struct dce_i2c_hw*) ;
 int is_engine_available (struct dce_i2c_hw*) ;
 int release_engine (struct dce_i2c_hw*) ;
 int setup_engine (struct dce_i2c_hw*) ;
 int udelay (int) ;

struct dce_i2c_hw *acquire_i2c_hw_engine(
 struct resource_pool *pool,
 struct ddc *ddc)
{
 uint32_t counter = 0;
 enum gpio_result result;
 uint32_t current_speed;
 struct dce_i2c_hw *dce_i2c_hw = ((void*)0);

 if (!ddc)
  return ((void*)0);

 if (ddc->hw_info.hw_supported) {
  enum gpio_ddc_line line = dal_ddc_get_line(ddc);

  if (line < pool->res_cap->num_ddc)
   dce_i2c_hw = pool->hw_i2cs[line];
 }

 if (!dce_i2c_hw)
  return ((void*)0);

 if (pool->i2c_hw_buffer_in_use || !is_engine_available(dce_i2c_hw))
  return ((void*)0);

 do {
  result = dal_ddc_open(ddc, GPIO_MODE_HARDWARE,
   GPIO_DDC_CONFIG_TYPE_MODE_I2C);

  if (result == GPIO_RESULT_OK)
   break;



  udelay(10);

  ++counter;
 } while (counter < 2);

 if (result != GPIO_RESULT_OK)
  return ((void*)0);

 dce_i2c_hw->ddc = ddc;

 current_speed = get_speed(dce_i2c_hw);

 if (current_speed)
  dce_i2c_hw->original_speed = current_speed;

 if (!setup_engine(dce_i2c_hw)) {
  release_engine(dce_i2c_hw);
  return ((void*)0);
 }

 pool->i2c_hw_buffer_in_use = 1;
 return dce_i2c_hw;
}
