
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilist {int nr_elts; } ;
struct entry_space {int dummy; } ;
struct entry {int sentinel; void* prev; void* next; } ;


 int l_add_head (struct entry_space*,struct ilist*,struct entry*) ;
 struct entry* l_prev (struct entry_space*,struct entry*) ;
 void* to_index (struct entry_space*,struct entry*) ;

__attribute__((used)) static void l_add_before(struct entry_space *es, struct ilist *l,
    struct entry *old, struct entry *e)
{
 struct entry *prev = l_prev(es, old);

 if (!prev)
  l_add_head(es, l, e);

 else {
  e->prev = old->prev;
  e->next = to_index(es, old);
  prev->next = old->prev = to_index(es, e);

  if (!e->sentinel)
   l->nr_elts++;
 }
}
