
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence_chain {int prev; } ;
struct dma_fence {int dummy; } ;


 struct dma_fence* dma_fence_get_rcu_safe (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct dma_fence *dma_fence_chain_get_prev(struct dma_fence_chain *chain)
{
 struct dma_fence *prev;

 rcu_read_lock();
 prev = dma_fence_get_rcu_safe(&chain->prev);
 rcu_read_unlock();
 return prev;
}
