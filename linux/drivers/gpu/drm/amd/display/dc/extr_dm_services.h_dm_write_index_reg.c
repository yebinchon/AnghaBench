
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_context {int cgs_device; } ;
typedef enum cgs_ind_reg { ____Placeholder_cgs_ind_reg } cgs_ind_reg ;


 int cgs_write_ind_register (int ,int,int ,int ) ;

__attribute__((used)) static inline void dm_write_index_reg(
 const struct dc_context *ctx,
 enum cgs_ind_reg addr_space,
 uint32_t index,
 uint32_t value)
{
 cgs_write_ind_register(ctx->cgs_device, addr_space, index, value);
}
