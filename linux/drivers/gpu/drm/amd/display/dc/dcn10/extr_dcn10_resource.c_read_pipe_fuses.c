
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_context {int dummy; } ;


 int dm_read_reg_soc15 (struct dc_context*,int ,int ) ;
 int mmCC_DC_PIPE_DIS ;

__attribute__((used)) static uint32_t read_pipe_fuses(struct dc_context *ctx)
{
 uint32_t value = dm_read_reg_soc15(ctx, mmCC_DC_PIPE_DIS, 0);

 value = value & 0xf;
 return value;
}
