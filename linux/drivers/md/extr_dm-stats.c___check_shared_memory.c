
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM_STATS_MEMORY_FACTOR ;
 size_t DM_STATS_VMALLOC_FACTOR ;
 int PAGE_SHIFT ;
 size_t VMALLOC_END ;
 size_t VMALLOC_START ;
 size_t shared_memory_amount ;
 int totalram_pages () ;

__attribute__((used)) static bool __check_shared_memory(size_t alloc_size)
{
 size_t a;

 a = shared_memory_amount + alloc_size;
 if (a < shared_memory_amount)
  return 0;
 if (a >> PAGE_SHIFT > totalram_pages() / DM_STATS_MEMORY_FACTOR)
  return 0;




 return 1;
}
