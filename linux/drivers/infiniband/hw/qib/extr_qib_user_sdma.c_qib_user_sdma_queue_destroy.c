
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_user_sdma_queue {scalar_t__ refcount; int pkt_slab; int header_cache; struct qib_user_sdma_queue* sdma_rb_node; int node; } ;


 int dma_pool_destroy (int ) ;
 int kfree (struct qib_user_sdma_queue*) ;
 int kmem_cache_destroy (int ) ;
 int qib_user_sdma_rb_root ;
 int rb_erase (int *,int *) ;

void qib_user_sdma_queue_destroy(struct qib_user_sdma_queue *pq)
{
 if (!pq)
  return;

 pq->sdma_rb_node->refcount--;
 if (pq->sdma_rb_node->refcount == 0) {
  rb_erase(&pq->sdma_rb_node->node, &qib_user_sdma_rb_root);
  kfree(pq->sdma_rb_node);
 }
 dma_pool_destroy(pq->header_cache);
 kmem_cache_destroy(pq->pkt_slab);
 kfree(pq);
}
