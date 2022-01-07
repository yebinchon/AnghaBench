
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qxl_ring_header {scalar_t__ prod; scalar_t__ cons; scalar_t__ num_items; scalar_t__ notify_on_cons; } ;
struct qxl_ring {int lock; TYPE_1__* ring; } ;
struct TYPE_2__ {struct qxl_ring_header header; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int qxl_check_header(struct qxl_ring *ring)
{
 int ret;
 struct qxl_ring_header *header = &(ring->ring->header);
 unsigned long flags;

 spin_lock_irqsave(&ring->lock, flags);
 ret = header->prod - header->cons < header->num_items;
 if (ret == 0)
  header->notify_on_cons = header->cons + 1;
 spin_unlock_irqrestore(&ring->lock, flags);
 return ret;
}
