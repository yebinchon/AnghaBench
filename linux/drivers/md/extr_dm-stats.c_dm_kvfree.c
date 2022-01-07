
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_shared_memory (size_t) ;
 int kvfree (void*) ;

__attribute__((used)) static void dm_kvfree(void *ptr, size_t alloc_size)
{
 if (!ptr)
  return;

 free_shared_memory(alloc_size);

 kvfree(ptr);
}
