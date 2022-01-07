
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct msm_pending_timer {int crtc_idx; int work; TYPE_1__ timer; struct msm_kms* kms; } ;
struct msm_kms {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS ;
 int INIT_WORK (int *,int ) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int msm_atomic_pending_timer ;
 int msm_atomic_pending_work ;

void msm_atomic_init_pending_timer(struct msm_pending_timer *timer,
  struct msm_kms *kms, int crtc_idx)
{
 timer->kms = kms;
 timer->crtc_idx = crtc_idx;
 hrtimer_init(&timer->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 timer->timer.function = msm_atomic_pending_timer;
 INIT_WORK(&timer->work, msm_atomic_pending_work);
}
