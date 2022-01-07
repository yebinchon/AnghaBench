
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int __GFP_NOMEMALLOC ;
 int claim_shared_memory (size_t) ;
 int free_shared_memory (size_t) ;
 void* kvzalloc_node (size_t,int,int) ;

__attribute__((used)) static void *dm_kvzalloc(size_t alloc_size, int node)
{
 void *p;

 if (!claim_shared_memory(alloc_size))
  return ((void*)0);

 p = kvzalloc_node(alloc_size, GFP_KERNEL | __GFP_NOMEMALLOC, node);
 if (p)
  return p;

 free_shared_memory(alloc_size);

 return ((void*)0);
}
