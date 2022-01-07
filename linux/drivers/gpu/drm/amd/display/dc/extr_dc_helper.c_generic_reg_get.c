
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct dc_context {int dummy; } ;


 int dm_read_reg (struct dc_context const*,int ) ;
 int get_reg_field_value_ex (int ,int ,int ) ;

uint32_t generic_reg_get(const struct dc_context *ctx, uint32_t addr,
  uint8_t shift, uint32_t mask, uint32_t *field_value)
{
 uint32_t reg_val = dm_read_reg(ctx, addr);
 *field_value = get_reg_field_value_ex(reg_val, mask, shift);
 return reg_val;
}
