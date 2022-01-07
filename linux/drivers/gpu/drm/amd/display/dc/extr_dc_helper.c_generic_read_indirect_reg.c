
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_context {int dummy; } ;


 int dm_read_reg (struct dc_context const*,int ) ;
 int dm_write_reg (struct dc_context const*,int ,int ) ;

uint32_t generic_read_indirect_reg(const struct dc_context *ctx,
  uint32_t addr_index, uint32_t addr_data,
  uint32_t index)
{
 uint32_t value = 0;

 dm_write_reg(ctx, addr_index, index);
 value = dm_read_reg(ctx, addr_data);

 return value;
}
