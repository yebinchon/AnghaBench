
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {scalar_t__ next_mapping; int mapping_pool; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ mempool_alloc (int *,int ) ;

__attribute__((used)) static int ensure_next_mapping(struct pool *pool)
{
 if (pool->next_mapping)
  return 0;

 pool->next_mapping = mempool_alloc(&pool->mapping_pool, GFP_ATOMIC);

 return pool->next_mapping ? 0 : -ENOMEM;
}
