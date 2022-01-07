
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_i2c_shift {int dummy; } ;
struct dce_i2c_registers {int dummy; } ;
struct dce_i2c_mask {int dummy; } ;
struct dce_i2c_hw {int default_speed; } ;
struct dc_context {int dummy; } ;


 int DEFAULT_I2C_HW_SPEED_100KHZ ;
 int dce100_i2c_hw_construct (struct dce_i2c_hw*,struct dc_context*,int ,struct dce_i2c_registers const*,struct dce_i2c_shift const*,struct dce_i2c_mask const*) ;

void dce112_i2c_hw_construct(
 struct dce_i2c_hw *dce_i2c_hw,
 struct dc_context *ctx,
 uint32_t engine_id,
 const struct dce_i2c_registers *regs,
 const struct dce_i2c_shift *shifts,
 const struct dce_i2c_mask *masks)
{
 dce100_i2c_hw_construct(dce_i2c_hw,
   ctx,
   engine_id,
   regs,
   shifts,
   masks);
 dce_i2c_hw->default_speed = DEFAULT_I2C_HW_SPEED_100KHZ;
}
