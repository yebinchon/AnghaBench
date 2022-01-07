
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_stats {int dummy; } ;
struct TYPE_2__ {int cache_hits; } ;
struct cache_accounting {TYPE_1__ total; } ;


 int memset (int *,int ,int) ;

void bch_cache_accounting_clear(struct cache_accounting *acc)
{
 memset(&acc->total.cache_hits,
        0,
        sizeof(struct cache_stats));
}
