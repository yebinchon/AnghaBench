
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_type_info {int flags; int name; int cache; int size; } ;


 size_t ALIGN (int ,int ) ;
 int ENOMEM ;
 int RXE_NUM_TYPES ;
 int RXE_POOL_ALIGN ;
 int RXE_POOL_CACHE_FLAGS ;
 int RXE_POOL_NO_ALLOC ;
 int kmem_cache_create (int ,size_t,int ,int ,int *) ;
 int pr_err (char*,int ) ;
 int rxe_cache_clean (int) ;
 struct rxe_type_info* rxe_type_info ;

int rxe_cache_init(void)
{
 int err;
 int i;
 size_t size;
 struct rxe_type_info *type;

 for (i = 0; i < RXE_NUM_TYPES; i++) {
  type = &rxe_type_info[i];
  size = ALIGN(type->size, RXE_POOL_ALIGN);
  if (!(type->flags & RXE_POOL_NO_ALLOC)) {
   type->cache =
    kmem_cache_create(type->name, size,
        RXE_POOL_ALIGN,
        RXE_POOL_CACHE_FLAGS, ((void*)0));
   if (!type->cache) {
    pr_err("Unable to init kmem cache for %s\n",
           type->name);
    err = -ENOMEM;
    goto err1;
   }
  }
 }

 return 0;

err1:
 rxe_cache_clean(i);

 return err;
}
