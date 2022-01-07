
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct qxl_ring_header {int cons; int prod; int notify_on_prod; } ;
struct qxl_ring {int n_elements; int element_size; int lock; TYPE_1__* ring; } ;
struct TYPE_2__ {int * elements; struct qxl_ring_header header; } ;


 int memcpy (void*,void*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool qxl_ring_pop(struct qxl_ring *ring,
    void *element)
{
 volatile struct qxl_ring_header *header = &(ring->ring->header);
 volatile uint8_t *ring_elt;
 int idx;
 unsigned long flags;

 spin_lock_irqsave(&ring->lock, flags);
 if (header->cons == header->prod) {
  header->notify_on_prod = header->cons + 1;
  spin_unlock_irqrestore(&ring->lock, flags);
  return 0;
 }

 idx = header->cons & (ring->n_elements - 1);
 ring_elt = ring->ring->elements + idx * ring->element_size;

 memcpy(element, (void *)ring_elt, ring->element_size);

 header->cons++;

 spin_unlock_irqrestore(&ring->lock, flags);
 return 1;
}
