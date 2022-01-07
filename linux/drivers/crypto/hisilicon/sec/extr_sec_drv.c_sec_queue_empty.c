
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue_ring_cmd {int used; } ;
struct sec_queue {struct sec_queue_ring_cmd ring_cmd; } ;


 int atomic_read (int *) ;

bool sec_queue_empty(struct sec_queue *queue)
{
 struct sec_queue_ring_cmd *msg_ring = &queue->ring_cmd;

 return !atomic_read(&msg_ring->used);
}
