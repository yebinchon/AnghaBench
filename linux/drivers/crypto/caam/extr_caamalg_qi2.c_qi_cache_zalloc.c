
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* kmem_cache_zalloc (int ,int ) ;
 int qi_cache ;

__attribute__((used)) static inline void *qi_cache_zalloc(gfp_t flags)
{
 return kmem_cache_zalloc(qi_cache, flags);
}
