
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_pool {size_t type; } ;
struct kmem_cache {int dummy; } ;
struct TYPE_2__ {struct kmem_cache* cache; } ;


 TYPE_1__* rxe_type_info ;

__attribute__((used)) static inline struct kmem_cache *pool_cache(struct rxe_pool *pool)
{
 return rxe_type_info[pool->type].cache;
}
