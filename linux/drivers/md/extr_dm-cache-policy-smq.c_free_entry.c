
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_alloc {int free; int es; int nr_allocated; } ;
struct entry {int allocated; } ;


 int BUG_ON (int) ;
 int l_add_tail (int ,int *,struct entry*) ;

__attribute__((used)) static void free_entry(struct entry_alloc *ea, struct entry *e)
{
 BUG_ON(!ea->nr_allocated);
 BUG_ON(!e->allocated);

 ea->nr_allocated--;
 e->allocated = 0;
 l_add_tail(ea->es, &ea->free, e);
}
