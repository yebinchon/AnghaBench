
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_marker_queue {int lock; int head; } ;
struct vmw_marker {int head; int submitted; int seqno; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct vmw_marker* kmalloc (int,int ) ;
 int ktime_get_raw_ns () ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int vmw_marker_push(struct vmw_marker_queue *queue,
     uint32_t seqno)
{
 struct vmw_marker *marker = kmalloc(sizeof(*marker), GFP_KERNEL);

 if (unlikely(!marker))
  return -ENOMEM;

 marker->seqno = seqno;
 marker->submitted = ktime_get_raw_ns();
 spin_lock(&queue->lock);
 list_add_tail(&marker->head, &queue->head);
 spin_unlock(&queue->lock);

 return 0;
}
