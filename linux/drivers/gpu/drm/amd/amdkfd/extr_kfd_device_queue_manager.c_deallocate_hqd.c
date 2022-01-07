
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {size_t pipe; int queue; } ;
struct device_queue_manager {int* allocated_queues; } ;



__attribute__((used)) static inline void deallocate_hqd(struct device_queue_manager *dqm,
    struct queue *q)
{
 dqm->allocated_queues[q->pipe] |= (1 << q->queue);
}
