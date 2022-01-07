
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cblock_range {scalar_t__ begin; scalar_t__ end; } ;
struct cache {int commit_requested; } ;


 scalar_t__ cblock_succ (scalar_t__) ;
 int invalidate_cblock (struct cache*,scalar_t__) ;

__attribute__((used)) static int request_invalidation(struct cache *cache, struct cblock_range *range)
{
 int r = 0;







 while (range->begin != range->end) {
  r = invalidate_cblock(cache, range->begin);
  if (r)
   return r;

  range->begin = cblock_succ(range->begin);
 }

 cache->commit_requested = 1;
 return r;
}
