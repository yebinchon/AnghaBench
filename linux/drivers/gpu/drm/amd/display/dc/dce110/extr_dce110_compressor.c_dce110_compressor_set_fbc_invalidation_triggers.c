
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct compressor {int ctx; } ;


 int FBC_CLIENT_REGION_MASK ;
 int FBC_IDLE_FORCE_CLEAR_MASK ;
 int FBC_MEMORY_REGION_MASK ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmFBC_CLIENT_REGION_MASK ;
 int mmFBC_IDLE_FORCE_CLEAR_MASK ;
 int set_reg_field_value (int ,int ,int ,int ) ;

void dce110_compressor_set_fbc_invalidation_triggers(
 struct compressor *compressor,
 uint32_t fbc_trigger)
{



 uint32_t addr = mmFBC_CLIENT_REGION_MASK;
 uint32_t value = dm_read_reg(compressor->ctx, addr);

 set_reg_field_value(
  value,
  0,
  FBC_CLIENT_REGION_MASK,
  FBC_MEMORY_REGION_MASK);
 dm_write_reg(compressor->ctx, addr, value);
 addr = mmFBC_IDLE_FORCE_CLEAR_MASK;
 value = dm_read_reg(compressor->ctx, addr);
 set_reg_field_value(
  value,
  fbc_trigger,
  FBC_IDLE_FORCE_CLEAR_MASK,
  FBC_IDLE_FORCE_CLEAR_MASK);
 dm_write_reg(compressor->ctx, addr, value);
}
