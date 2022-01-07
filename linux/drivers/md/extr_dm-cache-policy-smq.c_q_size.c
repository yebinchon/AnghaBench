
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int nr_elts; } ;



__attribute__((used)) static unsigned q_size(struct queue *q)
{
 return q->nr_elts;
}
