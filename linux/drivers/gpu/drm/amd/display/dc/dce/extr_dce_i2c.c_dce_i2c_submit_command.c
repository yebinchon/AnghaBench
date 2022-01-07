
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_pool {int dummy; } ;
struct i2c_command {int dummy; } ;
struct ddc {int dummy; } ;
struct dce_i2c_sw {int dummy; } ;
struct dce_i2c_hw {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 struct dce_i2c_hw* acquire_i2c_hw_engine (struct resource_pool*,struct ddc*) ;
 struct dce_i2c_sw* dce_i2c_acquire_i2c_sw_engine (struct resource_pool*,struct ddc*) ;
 int dce_i2c_submit_command_hw (struct resource_pool*,struct ddc*,struct i2c_command*,struct dce_i2c_hw*) ;
 int dce_i2c_submit_command_sw (struct resource_pool*,struct ddc*,struct i2c_command*,struct dce_i2c_sw*) ;

bool dce_i2c_submit_command(
 struct resource_pool *pool,
 struct ddc *ddc,
 struct i2c_command *cmd)
{
 struct dce_i2c_hw *dce_i2c_hw;
 struct dce_i2c_sw *dce_i2c_sw;

 if (!ddc) {
  BREAK_TO_DEBUGGER();
  return 0;
 }

 if (!cmd) {
  BREAK_TO_DEBUGGER();
  return 0;
 }


 dce_i2c_sw = dce_i2c_acquire_i2c_sw_engine(pool, ddc);

 if (!dce_i2c_sw) {
  dce_i2c_hw = acquire_i2c_hw_engine(pool, ddc);

  if (!dce_i2c_hw)
   return 0;

  return dce_i2c_submit_command_hw(pool, ddc, cmd, dce_i2c_hw);
 }

 return dce_i2c_submit_command_sw(pool, ddc, cmd, dce_i2c_sw);

}
