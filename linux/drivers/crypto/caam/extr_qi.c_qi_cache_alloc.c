
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* kmem_cache_alloc (int ,int ) ;
 int qi_cache ;

void *qi_cache_alloc(gfp_t flags)
{
 return kmem_cache_alloc(qi_cache, flags);
}
