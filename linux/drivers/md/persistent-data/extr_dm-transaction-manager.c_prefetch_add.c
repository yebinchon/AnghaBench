
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prefetch_set {scalar_t__* blocks; int lock; } ;
typedef scalar_t__ dm_block_t ;


 scalar_t__ PREFETCH_SENTINEL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int prefetch_hash (scalar_t__) ;

__attribute__((used)) static void prefetch_add(struct prefetch_set *p, dm_block_t b)
{
 unsigned h = prefetch_hash(b);

 mutex_lock(&p->lock);
 if (p->blocks[h] == PREFETCH_SENTINEL)
  p->blocks[h] = b;

 mutex_unlock(&p->lock);
}
