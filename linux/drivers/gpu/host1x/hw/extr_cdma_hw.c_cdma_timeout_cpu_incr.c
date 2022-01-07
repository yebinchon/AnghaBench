
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {int syncpt; } ;
struct host1x_cdma {TYPE_1__ timeout; } ;


 int host1x_syncpt_incr (int ) ;
 int host1x_syncpt_load (int ) ;

__attribute__((used)) static void cdma_timeout_cpu_incr(struct host1x_cdma *cdma, u32 getptr,
    u32 syncpt_incrs, u32 syncval, u32 nr_slots)
{
 unsigned int i;

 for (i = 0; i < syncpt_incrs; i++)
  host1x_syncpt_incr(cdma->timeout.syncpt);


 host1x_syncpt_load(cdma->timeout.syncpt);
}
