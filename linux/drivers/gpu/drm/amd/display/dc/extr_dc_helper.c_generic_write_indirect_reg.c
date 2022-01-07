
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_context {int dummy; } ;


 int dm_write_reg (struct dc_context const*,int ,int ) ;

void generic_write_indirect_reg(const struct dc_context *ctx,
  uint32_t addr_index, uint32_t addr_data,
  uint32_t index, uint32_t data)
{
 dm_write_reg(ctx, addr_index, index);
 dm_write_reg(ctx, addr_data, data);
}
