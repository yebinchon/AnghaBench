
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int clean; int dirty; } ;
struct entry {unsigned int level; } ;


 unsigned int NR_CACHE_LEVELS ;
 struct entry* demote_sentinel (struct smq_policy*,unsigned int) ;
 int q_push (int *,struct entry*) ;
 struct entry* writeback_sentinel (struct smq_policy*,unsigned int) ;

__attribute__((used)) static void __sentinels_init(struct smq_policy *mq)
{
 unsigned level;
 struct entry *sentinel;

 for (level = 0; level < NR_CACHE_LEVELS; level++) {
  sentinel = writeback_sentinel(mq, level);
  sentinel->level = level;
  q_push(&mq->dirty, sentinel);

  sentinel = demote_sentinel(mq, level);
  sentinel->level = level;
  q_push(&mq->clean, sentinel);
 }
}
