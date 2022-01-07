
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int descq_cnt; } ;


 int _sdma_engine_progress_schedule (struct sdma_engine*) ;
 int sdma_descq_inprocess (struct sdma_engine*) ;

__attribute__((used)) static inline void sdma_engine_progress_schedule(
 struct sdma_engine *sde)
{
 if (!sde || sdma_descq_inprocess(sde) < (sde->descq_cnt / 8))
  return;
 _sdma_engine_progress_schedule(sde);
}
