
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_space {int * begin; int * end; } ;
struct entry {int dummy; } ;


 int ENOMEM ;
 int array_size (unsigned int,int) ;
 int * vzalloc (int ) ;

__attribute__((used)) static int space_init(struct entry_space *es, unsigned nr_entries)
{
 if (!nr_entries) {
  es->begin = es->end = ((void*)0);
  return 0;
 }

 es->begin = vzalloc(array_size(nr_entries, sizeof(struct entry)));
 if (!es->begin)
  return -ENOMEM;

 es->end = es->begin + nr_entries;
 return 0;
}
