
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dma_fence_chain {int lock; int base; scalar_t__ prev_seqno; int work; struct dma_fence* fence; int prev; } ;
struct dma_fence {scalar_t__ seqno; int context; int ops; } ;


 scalar_t__ __dma_fence_is_later (int ,scalar_t__,int ) ;
 int dma_fence_chain_irq_work ;
 int dma_fence_chain_ops ;
 int dma_fence_context_alloc (int) ;
 int dma_fence_init (int *,int *,int *,int ,int ) ;
 int init_irq_work (int *,int ) ;
 int max (scalar_t__,int ) ;
 int rcu_assign_pointer (int ,struct dma_fence*) ;
 int spin_lock_init (int *) ;
 struct dma_fence_chain* to_dma_fence_chain (struct dma_fence*) ;

void dma_fence_chain_init(struct dma_fence_chain *chain,
     struct dma_fence *prev,
     struct dma_fence *fence,
     uint64_t seqno)
{
 struct dma_fence_chain *prev_chain = to_dma_fence_chain(prev);
 uint64_t context;

 spin_lock_init(&chain->lock);
 rcu_assign_pointer(chain->prev, prev);
 chain->fence = fence;
 chain->prev_seqno = 0;
 init_irq_work(&chain->work, dma_fence_chain_irq_work);


 if (prev_chain && __dma_fence_is_later(seqno, prev->seqno, prev->ops)) {
  context = prev->context;
  chain->prev_seqno = prev->seqno;
 } else {
  context = dma_fence_context_alloc(1);

  if (prev_chain)
   seqno = max(prev->seqno, seqno);
 }

 dma_fence_init(&chain->base, &dma_fence_chain_ops,
         &chain->lock, context, seqno);
}
