
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {scalar_t__ write_promote_level; scalar_t__ read_promote_level; int cache_alloc; } ;
struct entry {scalar_t__ level; } ;
typedef enum promote_result { ____Placeholder_promote_result } promote_result ;


 int PROMOTE_TEMPORARY ;
 int WRITE ;
 int allocator_empty (int *) ;
 int maybe_promote (int) ;

__attribute__((used)) static enum promote_result should_promote(struct smq_policy *mq, struct entry *hs_e,
       int data_dir, bool fast_promote)
{
 if (data_dir == WRITE) {
  if (!allocator_empty(&mq->cache_alloc) && fast_promote)
   return PROMOTE_TEMPORARY;

  return maybe_promote(hs_e->level >= mq->write_promote_level);
 } else
  return maybe_promote(hs_e->level >= mq->read_promote_level);
}
