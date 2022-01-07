
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_user_sdma_pkt_q {int handler; } ;
struct evict_data {scalar_t__ cleared; scalar_t__ target; } ;


 int hfi1_mmu_rb_evict (int ,struct evict_data*) ;

__attribute__((used)) static u32 sdma_cache_evict(struct hfi1_user_sdma_pkt_q *pq, u32 npages)
{
 struct evict_data evict_data;

 evict_data.cleared = 0;
 evict_data.target = npages;
 hfi1_mmu_rb_evict(pq->handler, &evict_data);
 return evict_data.cleared;
}
