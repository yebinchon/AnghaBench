
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sdma_engine {int idle_mask; int progress_mask; int int_mask; int head_lock; int sdma_int_cnt; int progress_int_cnt; int idle_int_cnt; } ;


 int sdma_desct_intr ;
 int sdma_make_progress (struct sdma_engine*,int) ;
 int sdma_set_desc_cnt (struct sdma_engine*,int ) ;
 int trace_hfi1_sdma_engine_interrupt (struct sdma_engine*,int) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

void sdma_engine_interrupt(struct sdma_engine *sde, u64 status)
{
 trace_hfi1_sdma_engine_interrupt(sde, status);
 write_seqlock(&sde->head_lock);
 sdma_set_desc_cnt(sde, sdma_desct_intr);
 if (status & sde->idle_mask)
  sde->idle_int_cnt++;
 else if (status & sde->progress_mask)
  sde->progress_int_cnt++;
 else if (status & sde->int_mask)
  sde->sdma_int_cnt++;
 sdma_make_progress(sde, status);
 write_sequnlock(&sde->head_lock);
}
