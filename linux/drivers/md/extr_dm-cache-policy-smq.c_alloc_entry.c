
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_alloc {int nr_allocated; int free; int es; } ;
struct entry {int dummy; } ;


 int init_entry (struct entry*) ;
 scalar_t__ l_empty (int *) ;
 struct entry* l_pop_head (int ,int *) ;

__attribute__((used)) static struct entry *alloc_entry(struct entry_alloc *ea)
{
 struct entry *e;

 if (l_empty(&ea->free))
  return ((void*)0);

 e = l_pop_head(ea->es, &ea->free);
 init_entry(e);
 ea->nr_allocated++;

 return e;
}
