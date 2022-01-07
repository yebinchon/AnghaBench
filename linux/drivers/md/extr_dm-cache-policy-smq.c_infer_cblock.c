
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int cache_alloc; } ;
struct entry {int dummy; } ;
typedef int dm_cblock_t ;


 int get_index (int *,struct entry*) ;
 int to_cblock (int ) ;

__attribute__((used)) static dm_cblock_t infer_cblock(struct smq_policy *mq, struct entry *e)
{
 return to_cblock(get_index(&mq->cache_alloc, e));
}
