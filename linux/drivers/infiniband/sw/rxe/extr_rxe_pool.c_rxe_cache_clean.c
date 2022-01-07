
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_type_info {int flags; int * cache; } ;


 int RXE_POOL_NO_ALLOC ;
 int kmem_cache_destroy (int *) ;
 struct rxe_type_info* rxe_type_info ;

__attribute__((used)) static void rxe_cache_clean(size_t cnt)
{
 int i;
 struct rxe_type_info *type;

 for (i = 0; i < cnt; i++) {
  type = &rxe_type_info[i];
  if (!(type->flags & RXE_POOL_NO_ALLOC)) {
   kmem_cache_destroy(type->cache);
   type->cache = ((void*)0);
  }
 }
}
