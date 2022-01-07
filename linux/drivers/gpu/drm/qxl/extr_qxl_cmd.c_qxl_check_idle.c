
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_ring_header {scalar_t__ prod; scalar_t__ cons; } ;
struct qxl_ring {int lock; TYPE_1__* ring; } ;
struct TYPE_2__ {struct qxl_ring_header header; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qxl_check_idle(struct qxl_ring *ring)
{
 int ret;
 struct qxl_ring_header *header = &(ring->ring->header);
 unsigned long flags;

 spin_lock_irqsave(&ring->lock, flags);
 ret = header->prod == header->cons;
 spin_unlock_irqrestore(&ring->lock, flags);
 return ret;
}
