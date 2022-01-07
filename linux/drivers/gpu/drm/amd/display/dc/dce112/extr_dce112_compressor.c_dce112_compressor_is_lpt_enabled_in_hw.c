
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct compressor {int ctx; } ;


 int LOW_POWER_TILING_CONTROL ;
 int LOW_POWER_TILING_ENABLE ;
 int dm_read_reg (int ,int ) ;
 int get_reg_field_value (int ,int ,int ) ;
 int mmLOW_POWER_TILING_CONTROL ;

bool dce112_compressor_is_lpt_enabled_in_hw(struct compressor *compressor)
{

 uint32_t value = dm_read_reg(compressor->ctx,
  mmLOW_POWER_TILING_CONTROL);

 return get_reg_field_value(
  value,
  LOW_POWER_TILING_CONTROL,
  LOW_POWER_TILING_ENABLE);
}
