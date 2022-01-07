
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {struct dce_i2c_sw** sw_i2cs; } ;
struct ddc {int dummy; } ;
struct dce_i2c_sw {int dummy; } ;
typedef enum gpio_ddc_line { ____Placeholder_gpio_ddc_line } gpio_ddc_line ;


 int dce_i2c_engine_acquire_sw (struct dce_i2c_sw*,struct ddc*) ;
 scalar_t__ get_hw_supported_ddc_line (struct ddc*,int*) ;

struct dce_i2c_sw *dce_i2c_acquire_i2c_sw_engine(
 struct resource_pool *pool,
 struct ddc *ddc)
{
 enum gpio_ddc_line line;
 struct dce_i2c_sw *engine = ((void*)0);

 if (get_hw_supported_ddc_line(ddc, &line))
  engine = pool->sw_i2cs[line];

 if (!engine)
  return ((void*)0);

 if (!dce_i2c_engine_acquire_sw(engine, ddc))
  return ((void*)0);

 return engine;
}
