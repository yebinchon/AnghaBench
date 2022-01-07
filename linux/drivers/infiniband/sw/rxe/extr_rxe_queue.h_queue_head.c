
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_queue {int dummy; } ;


 void* consumer_addr (struct rxe_queue*) ;
 scalar_t__ queue_empty (struct rxe_queue*) ;

__attribute__((used)) static inline void *queue_head(struct rxe_queue *q)
{
 return queue_empty(q) ? ((void*)0) : consumer_addr(q);
}
