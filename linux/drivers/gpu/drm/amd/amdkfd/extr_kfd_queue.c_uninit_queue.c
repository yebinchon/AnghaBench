
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int dummy; } ;


 int kfree (struct queue*) ;

void uninit_queue(struct queue *q)
{
 kfree(q);
}
