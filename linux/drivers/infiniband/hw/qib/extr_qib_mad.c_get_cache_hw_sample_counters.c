
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int psxmitwait; int psrcvpkts; int psxmitpkts; int psrcvdata; int psxmitdata; } ;
struct TYPE_4__ {TYPE_1__ counter_cache; } ;
struct qib_pportdata {TYPE_2__ cong_stats; } ;
typedef int __be16 ;
__attribute__((used)) static u64 get_cache_hw_sample_counters(struct qib_pportdata *ppd,
     __be16 sel)
{
 u64 ret;

 switch (sel) {
 case 130:
  ret = ppd->cong_stats.counter_cache.psxmitdata;
  break;
 case 132:
  ret = ppd->cong_stats.counter_cache.psrcvdata;
  break;
 case 129:
  ret = ppd->cong_stats.counter_cache.psxmitpkts;
  break;
 case 131:
  ret = ppd->cong_stats.counter_cache.psrcvpkts;
  break;
 case 128:
  ret = ppd->cong_stats.counter_cache.psxmitwait;
  break;
 default:
  ret = 0;
 }

 return ret;
}
