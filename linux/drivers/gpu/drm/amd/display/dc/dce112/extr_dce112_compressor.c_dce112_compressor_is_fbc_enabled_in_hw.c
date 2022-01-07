
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct compressor {int attached_inst; int ctx; } ;


 int FBC_CNTL ;
 int FBC_ENABLE_STATUS ;
 int FBC_GRPH_COMP_EN ;
 int FBC_MISC ;
 int FBC_STATUS ;
 int FBC_STOP_ON_HFLIP_EVENT ;
 int dm_read_reg (int ,int ) ;
 scalar_t__ get_reg_field_value (int ,int ,int ) ;
 int mmFBC_CNTL ;
 int mmFBC_MISC ;
 int mmFBC_STATUS ;

bool dce112_compressor_is_fbc_enabled_in_hw(
 struct compressor *compressor,
 uint32_t *inst)
{

 uint32_t value;

 value = dm_read_reg(compressor->ctx, mmFBC_STATUS);
 if (get_reg_field_value(value, FBC_STATUS, FBC_ENABLE_STATUS)) {
  if (inst != ((void*)0))
   *inst = compressor->attached_inst;
  return 1;
 }

 value = dm_read_reg(compressor->ctx, mmFBC_MISC);
 if (get_reg_field_value(value, FBC_MISC, FBC_STOP_ON_HFLIP_EVENT)) {
  value = dm_read_reg(compressor->ctx, mmFBC_CNTL);

  if (get_reg_field_value(value, FBC_CNTL, FBC_GRPH_COMP_EN)) {
   if (inst != ((void*)0))
    *inst =
     compressor->attached_inst;
   return 1;
  }
 }
 return 0;
}
