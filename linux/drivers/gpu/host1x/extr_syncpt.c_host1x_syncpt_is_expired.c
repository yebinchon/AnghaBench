
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct host1x_syncpt {int max_val; int min_val; } ;
typedef scalar_t__ s32 ;


 scalar_t__ atomic_read (int *) ;
 int host1x_syncpt_client_managed (struct host1x_syncpt*) ;
 int smp_rmb () ;

bool host1x_syncpt_is_expired(struct host1x_syncpt *sp, u32 thresh)
{
 u32 current_val;
 u32 future_val;

 smp_rmb();

 current_val = (u32)atomic_read(&sp->min_val);
 future_val = (u32)atomic_read(&sp->max_val);
 if (!host1x_syncpt_client_managed(sp))
  return future_val - thresh >= current_val - thresh;
 else
  return (s32)(current_val - thresh) >= 0;
}
