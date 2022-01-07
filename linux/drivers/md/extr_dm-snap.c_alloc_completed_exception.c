
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception {int dummy; } ;
typedef scalar_t__ gfp_t ;


 scalar_t__ GFP_ATOMIC ;
 scalar_t__ GFP_NOIO ;
 int exception_cache ;
 struct dm_exception* kmem_cache_alloc (int ,scalar_t__) ;

__attribute__((used)) static struct dm_exception *alloc_completed_exception(gfp_t gfp)
{
 struct dm_exception *e;

 e = kmem_cache_alloc(exception_cache, gfp);
 if (!e && gfp == GFP_NOIO)
  e = kmem_cache_alloc(exception_cache, GFP_ATOMIC);

 return e;
}
