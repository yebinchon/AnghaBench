
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int cache_alloc; int table; } ;
struct entry {int allocated; } ;
struct dm_cache_policy {int dummy; } ;
typedef int dm_cblock_t ;


 int ENODATA ;
 int del_queue (struct smq_policy*,struct entry*) ;
 int free_entry (int *,struct entry*) ;
 int from_cblock (int ) ;
 struct entry* get_entry (int *,int ) ;
 int h_remove (int *,struct entry*) ;
 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;

__attribute__((used)) static int smq_invalidate_mapping(struct dm_cache_policy *p, dm_cblock_t cblock)
{
 struct smq_policy *mq = to_smq_policy(p);
 struct entry *e = get_entry(&mq->cache_alloc, from_cblock(cblock));

 if (!e->allocated)
  return -ENODATA;


 del_queue(mq, e);
 h_remove(&mq->table, e);
 free_entry(&mq->cache_alloc, e);
 return 0;
}
