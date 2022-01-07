
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_free (int ,void*) ;
 int qi_cache ;

__attribute__((used)) static inline void qi_cache_free(void *obj)
{
 kmem_cache_free(qi_cache, obj);
}
