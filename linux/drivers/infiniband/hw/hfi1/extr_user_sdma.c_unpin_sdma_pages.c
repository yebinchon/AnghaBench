
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_mmu_node {TYPE_1__* pq; scalar_t__ npages; int pages; } ;
struct TYPE_2__ {int n_locked; int mm; } ;


 int atomic_sub (scalar_t__,int *) ;
 int unpin_vector_pages (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void unpin_sdma_pages(struct sdma_mmu_node *node)
{
 if (node->npages) {
  unpin_vector_pages(node->pq->mm, node->pages, 0, node->npages);
  atomic_sub(node->npages, &node->pq->n_locked);
 }
}
