
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilist {int nr_elts; int tail; int head; } ;
struct entry_space {int dummy; } ;
struct entry {int sentinel; int prev; int next; } ;


 struct entry* l_next (struct entry_space*,struct entry*) ;
 struct entry* l_prev (struct entry_space*,struct entry*) ;

__attribute__((used)) static void l_del(struct entry_space *es, struct ilist *l, struct entry *e)
{
 struct entry *prev = l_prev(es, e);
 struct entry *next = l_next(es, e);

 if (prev)
  prev->next = e->next;
 else
  l->head = e->next;

 if (next)
  next->prev = e->prev;
 else
  l->tail = e->prev;

 if (!e->sentinel)
  l->nr_elts--;
}
