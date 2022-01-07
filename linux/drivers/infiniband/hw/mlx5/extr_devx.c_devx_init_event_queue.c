
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devx_async_event_queue {scalar_t__ is_destroyed; int bytes_in_use; int poll_wait; int event_list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void devx_init_event_queue(struct devx_async_event_queue *ev_queue)
{
 spin_lock_init(&ev_queue->lock);
 INIT_LIST_HEAD(&ev_queue->event_list);
 init_waitqueue_head(&ev_queue->poll_wait);
 atomic_set(&ev_queue->bytes_in_use, 0);
 ev_queue->is_destroyed = 0;
}
