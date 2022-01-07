
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int bm; int prefetches; } ;


 int prefetch_issue (int *,int ) ;

void dm_tm_issue_prefetches(struct dm_transaction_manager *tm)
{
 prefetch_issue(&tm->prefetches, tm->bm);
}
