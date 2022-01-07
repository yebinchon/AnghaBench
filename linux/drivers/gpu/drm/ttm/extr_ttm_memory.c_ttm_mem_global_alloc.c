
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_operation_ctx {int dummy; } ;
struct ttm_mem_global {int zone_kernel; } ;


 int ttm_mem_global_alloc_zone (struct ttm_mem_global*,int ,int ,struct ttm_operation_ctx*) ;

int ttm_mem_global_alloc(struct ttm_mem_global *glob, uint64_t memory,
    struct ttm_operation_ctx *ctx)
{





 return ttm_mem_global_alloc_zone(glob, glob->zone_kernel, memory, ctx);
}
