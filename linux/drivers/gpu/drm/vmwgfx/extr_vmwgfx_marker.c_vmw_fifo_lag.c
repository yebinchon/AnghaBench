
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vmw_marker_queue {scalar_t__ lag; int lock; scalar_t__ lag_time; } ;


 scalar_t__ ktime_get_raw_ns () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u64 vmw_fifo_lag(struct vmw_marker_queue *queue)
{
 u64 now;

 spin_lock(&queue->lock);
 now = ktime_get_raw_ns();
 queue->lag += now - queue->lag_time;
 queue->lag_time = now;
 spin_unlock(&queue->lock);
 return queue->lag;
}
