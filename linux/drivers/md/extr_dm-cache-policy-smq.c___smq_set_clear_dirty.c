
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int cache_alloc; } ;
struct entry {int dirty; scalar_t__ pending_work; } ;
typedef int dm_cblock_t ;


 int del_queue (struct smq_policy*,struct entry*) ;
 int from_cblock (int ) ;
 struct entry* get_entry (int *,int ) ;
 int push_queue (struct smq_policy*,struct entry*) ;

__attribute__((used)) static void __smq_set_clear_dirty(struct smq_policy *mq, dm_cblock_t cblock, bool set)
{
 struct entry *e = get_entry(&mq->cache_alloc, from_cblock(cblock));

 if (e->pending_work)
  e->dirty = set;
 else {
  del_queue(mq, e);
  e->dirty = set;
  push_queue(mq, e);
 }
}
