
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int nr_levels; } ;
struct entry {int dummy; } ;


 int q_del (struct queue*,struct entry*) ;
 struct entry* q_peek (struct queue*,int ,int) ;

__attribute__((used)) static struct entry *q_pop(struct queue *q)
{
 struct entry *e = q_peek(q, q->nr_levels, 1);

 if (e)
  q_del(q, e);

 return e;
}
