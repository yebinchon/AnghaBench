
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int current_demote_sentinels; int demote_sentinel_alloc; } ;
struct entry {int dummy; } ;


 struct entry* get_sentinel (int *,unsigned int,int ) ;

__attribute__((used)) static struct entry *demote_sentinel(struct smq_policy *mq, unsigned level)
{
 return get_sentinel(&mq->demote_sentinel_alloc, level, mq->current_demote_sentinels);
}
