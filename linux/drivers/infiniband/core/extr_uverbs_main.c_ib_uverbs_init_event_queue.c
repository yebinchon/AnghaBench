
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uverbs_event_queue {int * async_queue; scalar_t__ is_closed; int poll_wait; int event_list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

void ib_uverbs_init_event_queue(struct ib_uverbs_event_queue *ev_queue)
{
 spin_lock_init(&ev_queue->lock);
 INIT_LIST_HEAD(&ev_queue->event_list);
 init_waitqueue_head(&ev_queue->poll_wait);
 ev_queue->is_closed = 0;
 ev_queue->async_queue = ((void*)0);
}
