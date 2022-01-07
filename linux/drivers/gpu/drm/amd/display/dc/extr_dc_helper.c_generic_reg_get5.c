
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct dc_context {int dummy; } ;


 int dm_read_reg (struct dc_context const*,int ) ;
 int get_reg_field_value_ex (int ,int ,int ) ;

uint32_t generic_reg_get5(const struct dc_context *ctx, uint32_t addr,
  uint8_t shift1, uint32_t mask1, uint32_t *field_value1,
  uint8_t shift2, uint32_t mask2, uint32_t *field_value2,
  uint8_t shift3, uint32_t mask3, uint32_t *field_value3,
  uint8_t shift4, uint32_t mask4, uint32_t *field_value4,
  uint8_t shift5, uint32_t mask5, uint32_t *field_value5)
{
 uint32_t reg_val = dm_read_reg(ctx, addr);
 *field_value1 = get_reg_field_value_ex(reg_val, mask1, shift1);
 *field_value2 = get_reg_field_value_ex(reg_val, mask2, shift2);
 *field_value3 = get_reg_field_value_ex(reg_val, mask3, shift3);
 *field_value4 = get_reg_field_value_ex(reg_val, mask4, shift4);
 *field_value5 = get_reg_field_value_ex(reg_val, mask5, shift5);
 return reg_val;
}
