
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef unsigned short u16 ;
typedef int ktime_t ;


 int NSEC_PER_SEC ;
 unsigned short iclock_count ;
 int iclock_lock ;
 int iclock_timestamp ;
 unsigned short ktime_divns (int ,int) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int read_lock_irqsave (int *,int ) ;
 int read_unlock_irqrestore (int *,int ) ;

unsigned short
mISDN_clock_get(void)
{
 u_long flags;
 ktime_t timestamp_now;
 u16 delta;
 u16 count;

 read_lock_irqsave(&iclock_lock, flags);

 timestamp_now = ktime_get();
 delta = ktime_divns(ktime_sub(timestamp_now, iclock_timestamp),
   (NSEC_PER_SEC / 8000));

 count = iclock_count + delta;
 read_unlock_irqrestore(&iclock_lock, flags);
 return count;
}
