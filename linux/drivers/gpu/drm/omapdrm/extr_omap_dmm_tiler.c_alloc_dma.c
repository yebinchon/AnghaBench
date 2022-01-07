
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refill_engine {void* refill_va; } ;
struct dmm_txn {long current_pa; void* current_va; struct refill_engine* engine_handle; } ;
typedef long dma_addr_t ;


 int BUG_ON (int) ;
 int REFILL_BUFFER_SIZE ;
 long round_up (long,int) ;

__attribute__((used)) static void *alloc_dma(struct dmm_txn *txn, size_t sz, dma_addr_t *pa)
{
 void *ptr;
 struct refill_engine *engine = txn->engine_handle;


 txn->current_pa = round_up(txn->current_pa, 16);
 txn->current_va = (void *)round_up((long)txn->current_va, 16);

 ptr = txn->current_va;
 *pa = txn->current_pa;

 txn->current_pa += sz;
 txn->current_va += sz;

 BUG_ON((txn->current_va - engine->refill_va) > REFILL_BUFFER_SIZE);

 return ptr;
}
