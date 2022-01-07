
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_alloc {unsigned int begin; int nr_allocated; int free; int es; } ;
struct entry {int allocated; } ;


 int BUG_ON (int ) ;
 struct entry* __get_entry (int ,unsigned int) ;
 int init_entry (struct entry*) ;
 int l_del (int ,int *,struct entry*) ;

__attribute__((used)) static struct entry *alloc_particular_entry(struct entry_alloc *ea, unsigned i)
{
 struct entry *e = __get_entry(ea->es, ea->begin + i);

 BUG_ON(e->allocated);

 l_del(ea->es, &ea->free, e);
 init_entry(e);
 ea->nr_allocated++;

 return e;
}
