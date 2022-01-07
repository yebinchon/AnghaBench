
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_i2c_shift {int dummy; } ;
struct dce_i2c_registers {int dummy; } ;
struct dce_i2c_mask {int dummy; } ;
struct dce_i2c_hw {int reference_frequency; int buffer_size; } ;
struct dc_context {int dummy; } ;


 int I2C_HW_BUFFER_SIZE_DCE100 ;
 int MICROSECOND_TIME_BASE_DIV ;
 int REG_GET (int ,int ,int*) ;
 int XTAL_REF_DIV ;
 int dce_i2c_hw_construct (struct dce_i2c_hw*,struct dc_context*,int,struct dce_i2c_registers const*,struct dce_i2c_shift const*,struct dce_i2c_mask const*) ;

void dce100_i2c_hw_construct(
 struct dce_i2c_hw *dce_i2c_hw,
 struct dc_context *ctx,
 uint32_t engine_id,
 const struct dce_i2c_registers *regs,
 const struct dce_i2c_shift *shifts,
 const struct dce_i2c_mask *masks)
{

 uint32_t xtal_ref_div = 0;

 dce_i2c_hw_construct(dce_i2c_hw,
   ctx,
   engine_id,
   regs,
   shifts,
   masks);
 dce_i2c_hw->buffer_size = I2C_HW_BUFFER_SIZE_DCE100;

 REG_GET(MICROSECOND_TIME_BASE_DIV, XTAL_REF_DIV, &xtal_ref_div);

 if (xtal_ref_div == 0)
  xtal_ref_div = 2;
 dce_i2c_hw->reference_frequency =
  (dce_i2c_hw->reference_frequency * 2) / xtal_ref_div;
}
