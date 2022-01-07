
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct intel_engine_pool {struct list_head* cache_list; } ;


 int ARRAY_SIZE (struct list_head*) ;
 size_t PAGE_SHIFT ;
 int fls (size_t) ;

__attribute__((used)) static struct list_head *
bucket_for_size(struct intel_engine_pool *pool, size_t sz)
{
 int n;






 n = fls(sz >> PAGE_SHIFT) - 1;
 if (n >= ARRAY_SIZE(pool->cache_list))
  n = ARRAY_SIZE(pool->cache_list) - 1;

 return &pool->cache_list[n];
}
