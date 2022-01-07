
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct timespec64 {int dummy; } ;
struct TYPE_5__ {int host_time; int ref_time; int lock; } ;
struct TYPE_4__ {int (* read ) (TYPE_1__*) ;} ;


 int WLTIMEDELTA ;
 TYPE_3__ host_ts ;
 TYPE_1__* hyperv_cs ;
 struct timespec64 ns_to_timespec64 (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static struct timespec64 hv_get_adj_host_time(void)
{
 struct timespec64 ts;
 u64 newtime, reftime;
 unsigned long flags;

 spin_lock_irqsave(&host_ts.lock, flags);
 reftime = hyperv_cs->read(hyperv_cs);
 newtime = host_ts.host_time + (reftime - host_ts.ref_time);
 ts = ns_to_timespec64((newtime - WLTIMEDELTA) * 100);
 spin_unlock_irqrestore(&host_ts.lock, flags);

 return ts;
}
