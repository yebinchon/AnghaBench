
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct qxl_ring_header {int prod; scalar_t__ cons; scalar_t__ num_items; scalar_t__ notify_on_cons; int notify_on_prod; } ;
struct qxl_ring {int n_elements; int element_size; int lock; int prod_notify; TYPE_1__* ring; int * push_event; } ;
struct TYPE_2__ {int * elements; struct qxl_ring_header header; } ;


 int drm_can_sleep () ;
 int mb () ;
 int memcpy (void*,void const*,int) ;
 int outb (int ,int ) ;
 int qxl_check_header (struct qxl_ring*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int wait_event (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;

int qxl_ring_push(struct qxl_ring *ring,
    const void *new_elt, bool interruptible)
{
 struct qxl_ring_header *header = &(ring->ring->header);
 uint8_t *elt;
 int idx, ret;
 unsigned long flags;

 spin_lock_irqsave(&ring->lock, flags);
 if (header->prod - header->cons == header->num_items) {
  header->notify_on_cons = header->cons + 1;
  mb();
  spin_unlock_irqrestore(&ring->lock, flags);
  if (!drm_can_sleep()) {
   while (!qxl_check_header(ring))
    udelay(1);
  } else {
   if (interruptible) {
    ret = wait_event_interruptible(*ring->push_event,
              qxl_check_header(ring));
    if (ret)
     return ret;
   } else {
    wait_event(*ring->push_event,
        qxl_check_header(ring));
   }

  }
  spin_lock_irqsave(&ring->lock, flags);
 }

 idx = header->prod & (ring->n_elements - 1);
 elt = ring->ring->elements + idx * ring->element_size;

 memcpy((void *)elt, new_elt, ring->element_size);

 header->prod++;

 mb();

 if (header->prod == header->notify_on_prod)
  outb(0, ring->prod_notify);

 spin_unlock_irqrestore(&ring->lock, flags);
 return 0;
}
