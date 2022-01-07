
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int cmd; } ;
typedef int blk_status_t ;


 int commit (struct cache*,int) ;
 scalar_t__ dm_cache_changed_this_transaction (int ) ;
 int errno_to_blk_status (int ) ;

__attribute__((used)) static blk_status_t commit_op(void *context)
{
 struct cache *cache = context;

 if (dm_cache_changed_this_transaction(cache->cmd))
  return errno_to_blk_status(commit(cache, 0));

 return 0;
}
