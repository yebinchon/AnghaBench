
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_space {int dummy; } ;
struct entry {int dummy; } ;


 unsigned int INDEXER_NULL ;
 struct entry* __get_entry (struct entry_space*,unsigned int) ;

__attribute__((used)) static struct entry *to_entry(struct entry_space *es, unsigned block)
{
 if (block == INDEXER_NULL)
  return ((void*)0);

 return __get_entry(es, block);
}
