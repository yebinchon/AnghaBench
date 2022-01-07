
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int hangcheck_timer; int name; } ;


 int DBG (char*,int ) ;
 scalar_t__ DRM_MSM_HANGCHECK_JIFFIES ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies_up (scalar_t__) ;

__attribute__((used)) static void hangcheck_timer_reset(struct msm_gpu *gpu)
{
 DBG("%s", gpu->name);
 mod_timer(&gpu->hangcheck_timer,
   round_jiffies_up(jiffies + DRM_MSM_HANGCHECK_JIFFIES));
}
