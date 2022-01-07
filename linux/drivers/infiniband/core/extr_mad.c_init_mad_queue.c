
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_queue {int list; int lock; scalar_t__ count; struct ib_mad_qp_info* qp_info; } ;
struct ib_mad_qp_info {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_mad_queue(struct ib_mad_qp_info *qp_info,
      struct ib_mad_queue *mad_queue)
{
 mad_queue->qp_info = qp_info;
 mad_queue->count = 0;
 spin_lock_init(&mad_queue->lock);
 INIT_LIST_HEAD(&mad_queue->list);
}
