
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int progress_mask; int dd; } ;


 scalar_t__ CCE_INT_FORCE ;
 int IS_SDMA_START ;
 int trace_hfi1_sdma_engine_progress (struct sdma_engine*,int ) ;
 int write_csr (int ,scalar_t__,int ) ;

void _sdma_engine_progress_schedule(
 struct sdma_engine *sde)
{
 trace_hfi1_sdma_engine_progress(sde, sde->progress_mask);

 write_csr(sde->dd,
    CCE_INT_FORCE + (8 * (IS_SDMA_START / 64)),
    sde->progress_mask);
}
