
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_marker_queue {int lock; int lag_time; scalar_t__ lag; int head; } ;


 int INIT_LIST_HEAD (int *) ;
 int ktime_get_raw_ns () ;
 int spin_lock_init (int *) ;

void vmw_marker_queue_init(struct vmw_marker_queue *queue)
{
 INIT_LIST_HEAD(&queue->head);
 queue->lag = 0;
 queue->lag_time = ktime_get_raw_ns();
 spin_lock_init(&queue->lock);
}
