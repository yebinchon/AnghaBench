
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct host1x_cdma {int dummy; } ;
struct host1x {TYPE_1__* cdma_op; } ;
struct TYPE_2__ {int (* timeout_cpu_incr ) (struct host1x_cdma*,int ,int ,int ,int ) ;} ;


 int stub1 (struct host1x_cdma*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void host1x_hw_cdma_timeout_cpu_incr(struct host1x *host,
         struct host1x_cdma *cdma,
         u32 getptr,
         u32 syncpt_incrs,
         u32 syncval, u32 nr_slots)
{
 host->cdma_op->timeout_cpu_incr(cdma, getptr, syncpt_incrs, syncval,
     nr_slots);
}
