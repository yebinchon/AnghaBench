
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dc_context {TYPE_1__* perf_trace; int cgs_device; } ;
struct TYPE_2__ {int write_count; } ;


 int DC_ERR (char*) ;
 int cgs_write_register (int ,scalar_t__,scalar_t__) ;
 int trace_amdgpu_dc_wreg (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dm_write_reg_func(
 const struct dc_context *ctx,
 uint32_t address,
 uint32_t value,
 const char *func_name)
{






 cgs_write_register(ctx->cgs_device, address, value);
 trace_amdgpu_dc_wreg(&ctx->perf_trace->write_count, address, value);
}
