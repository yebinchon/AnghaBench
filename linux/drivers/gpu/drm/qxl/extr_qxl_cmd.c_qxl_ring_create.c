
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct ring {int dummy; } ;
struct qxl_ring_header {int dummy; } ;
struct qxl_ring {int element_size; int n_elements; int prod_notify; int lock; int * push_event; struct ring* ring; } ;


 int GFP_KERNEL ;
 struct qxl_ring* kmalloc (int,int ) ;
 int qxl_ring_init_hdr (struct qxl_ring*) ;
 int spin_lock_init (int *) ;

struct qxl_ring *
qxl_ring_create(struct qxl_ring_header *header,
  int element_size,
  int n_elements,
  int prod_notify,
  bool set_prod_notify,
  wait_queue_head_t *push_event)
{
 struct qxl_ring *ring;

 ring = kmalloc(sizeof(*ring), GFP_KERNEL);
 if (!ring)
  return ((void*)0);

 ring->ring = (struct ring *)header;
 ring->element_size = element_size;
 ring->n_elements = n_elements;
 ring->prod_notify = prod_notify;
 ring->push_event = push_event;
 if (set_prod_notify)
  qxl_ring_init_hdr(ring);
 spin_lock_init(&ring->lock);
 return ring;
}
