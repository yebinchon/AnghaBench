
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smq_policy {int cache_alloc; } ;
struct entry {int dirty; int pending_work; int level; int oblock; } ;
struct dm_cache_policy {int dummy; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 scalar_t__ NR_CACHE_LEVELS ;
 struct entry* alloc_particular_entry (int *,int ) ;
 int from_cblock (int ) ;
 int min (int ,scalar_t__) ;
 int push_front (struct smq_policy*,struct entry*) ;
 int random_level (int ) ;
 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;

__attribute__((used)) static int smq_load_mapping(struct dm_cache_policy *p,
       dm_oblock_t oblock, dm_cblock_t cblock,
       bool dirty, uint32_t hint, bool hint_valid)
{
 struct smq_policy *mq = to_smq_policy(p);
 struct entry *e;

 e = alloc_particular_entry(&mq->cache_alloc, from_cblock(cblock));
 e->oblock = oblock;
 e->dirty = dirty;
 e->level = hint_valid ? min(hint, NR_CACHE_LEVELS - 1) : random_level(cblock);
 e->pending_work = 0;





 push_front(mq, e);

 return 0;
}
