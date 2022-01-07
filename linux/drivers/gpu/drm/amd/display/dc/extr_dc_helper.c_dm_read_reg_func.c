
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dc_context {TYPE_1__* perf_trace; int cgs_device; } ;
struct TYPE_2__ {int read_count; } ;


 int DC_ERR (char*) ;
 scalar_t__ cgs_read_register (int ,scalar_t__) ;
 int trace_amdgpu_dc_rreg (int *,scalar_t__,scalar_t__) ;

uint32_t dm_read_reg_func(
 const struct dc_context *ctx,
 uint32_t address,
 const char *func_name)
{
 uint32_t value;






 value = cgs_read_register(ctx->cgs_device, address);
 trace_amdgpu_dc_rreg(&ctx->perf_trace->read_count, address, value);

 return value;
}
