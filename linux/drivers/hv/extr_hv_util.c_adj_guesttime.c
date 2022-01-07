
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef void* u64 ;
struct TYPE_5__ {int lock; void* host_time; void* ref_time; } ;
struct TYPE_4__ {void* (* read ) (TYPE_1__*) ;} ;


 int ICTIMESYNCFLAG_SYNC ;
 int adj_time_work ;
 TYPE_3__ host_ts ;
 TYPE_1__* hyperv_cs ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void* stub1 (TYPE_1__*) ;

__attribute__((used)) static inline void adj_guesttime(u64 hosttime, u64 reftime, u8 adj_flags)
{
 unsigned long flags;
 u64 cur_reftime;





 spin_lock_irqsave(&host_ts.lock, flags);

 cur_reftime = hyperv_cs->read(hyperv_cs);
 host_ts.host_time = hosttime;
 host_ts.ref_time = cur_reftime;
 host_ts.host_time += (cur_reftime - reftime);

 spin_unlock_irqrestore(&host_ts.lock, flags);


 if (adj_flags & ICTIMESYNCFLAG_SYNC)
  schedule_work(&adj_time_work);
}
