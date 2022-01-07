
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilist {int nr_elts; void* tail; void* head; } ;
struct entry_space {int dummy; } ;
struct entry {int sentinel; void* next; void* prev; } ;


 void* INDEXER_NULL ;
 struct entry* l_tail (struct entry_space*,struct ilist*) ;
 void* to_index (struct entry_space*,struct entry*) ;

__attribute__((used)) static void l_add_tail(struct entry_space *es, struct ilist *l, struct entry *e)
{
 struct entry *tail = l_tail(es, l);

 e->next = INDEXER_NULL;
 e->prev = l->tail;

 if (tail)
  tail->next = l->tail = to_index(es, e);
 else
  l->head = l->tail = to_index(es, e);

 if (!e->sentinel)
  l->nr_elts++;
}
