
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prefetch_set {scalar_t__* blocks; int lock; } ;
struct dm_block_manager {int dummy; } ;


 scalar_t__ PREFETCH_SENTINEL ;
 unsigned int PREFETCH_SIZE ;
 int dm_bm_prefetch (struct dm_block_manager*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void prefetch_issue(struct prefetch_set *p, struct dm_block_manager *bm)
{
 unsigned i;

 mutex_lock(&p->lock);

 for (i = 0; i < PREFETCH_SIZE; i++)
  if (p->blocks[i] != PREFETCH_SENTINEL) {
   dm_bm_prefetch(bm, p->blocks[i]);
   p->blocks[i] = PREFETCH_SENTINEL;
  }

 mutex_unlock(&p->lock);
}
