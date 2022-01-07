
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_kernel_vmap_range (void*,size_t) ;
 scalar_t__ is_vmalloc_addr (void*) ;

__attribute__((used)) static void persistent_memory_flush_cache(void *ptr, size_t size)
{
 if (is_vmalloc_addr(ptr))
  flush_kernel_vmap_range(ptr, size);
}
