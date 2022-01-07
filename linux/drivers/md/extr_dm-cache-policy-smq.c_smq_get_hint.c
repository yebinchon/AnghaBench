
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smq_policy {int cache_alloc; } ;
struct entry {int level; int allocated; } ;
struct dm_cache_policy {int dummy; } ;
typedef int dm_cblock_t ;


 int from_cblock (int ) ;
 struct entry* get_entry (int *,int ) ;
 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;

__attribute__((used)) static uint32_t smq_get_hint(struct dm_cache_policy *p, dm_cblock_t cblock)
{
 struct smq_policy *mq = to_smq_policy(p);
 struct entry *e = get_entry(&mq->cache_alloc, from_cblock(cblock));

 if (!e->allocated)
  return 0;

 return e->level;
}
