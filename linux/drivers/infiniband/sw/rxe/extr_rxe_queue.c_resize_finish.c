
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_queue {int elem_size; } ;


 int EINVAL ;
 int advance_consumer (struct rxe_queue*) ;
 int advance_producer (struct rxe_queue*) ;
 int consumer_addr (struct rxe_queue*) ;
 int memcpy (int ,int ,int ) ;
 int producer_addr (struct rxe_queue*) ;
 unsigned int queue_count (struct rxe_queue*) ;
 int queue_empty (struct rxe_queue*) ;
 int swap (struct rxe_queue,struct rxe_queue) ;

__attribute__((used)) static int resize_finish(struct rxe_queue *q, struct rxe_queue *new_q,
    unsigned int num_elem)
{
 if (!queue_empty(q) && (num_elem < queue_count(q)))
  return -EINVAL;

 while (!queue_empty(q)) {
  memcpy(producer_addr(new_q), consumer_addr(q),
         new_q->elem_size);
  advance_producer(new_q);
  advance_consumer(q);
 }

 swap(*q, *new_q);

 return 0;
}
