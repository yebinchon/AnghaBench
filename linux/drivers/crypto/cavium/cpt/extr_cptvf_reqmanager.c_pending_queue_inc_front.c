
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_queue {scalar_t__ front; } ;
struct pending_qinfo {scalar_t__ qlen; struct pending_queue* queue; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void pending_queue_inc_front(struct pending_qinfo *pqinfo,
        int qno)
{
 struct pending_queue *queue = &pqinfo->queue[qno];

 queue->front++;
 if (unlikely(queue->front == pqinfo->qlen))
  queue->front = 0;
}
