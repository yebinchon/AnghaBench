
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_space {int dummy; } ;
struct entry_alloc {unsigned int nr_allocated; unsigned int begin; struct entry_space* es; int free; } ;


 int __get_entry (struct entry_space*,unsigned int) ;
 int l_add_tail (struct entry_space*,int *,int ) ;
 int l_init (int *) ;

__attribute__((used)) static void init_allocator(struct entry_alloc *ea, struct entry_space *es,
      unsigned begin, unsigned end)
{
 unsigned i;

 ea->es = es;
 ea->nr_allocated = 0u;
 ea->begin = begin;

 l_init(&ea->free);
 for (i = begin; i != end; i++)
  l_add_tail(ea->es, &ea->free, __get_entry(ea->es, i));
}
