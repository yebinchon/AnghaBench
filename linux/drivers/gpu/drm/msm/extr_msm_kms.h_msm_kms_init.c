
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms_funcs {int dummy; } ;
struct msm_kms {int * pending_timers; struct msm_kms_funcs const* funcs; int commit_lock; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int msm_atomic_init_pending_timer (int *,struct msm_kms*,unsigned int) ;
 int mutex_init (int *) ;

__attribute__((used)) static inline void msm_kms_init(struct msm_kms *kms,
  const struct msm_kms_funcs *funcs)
{
 unsigned i;

 mutex_init(&kms->commit_lock);
 kms->funcs = funcs;

 for (i = 0; i < ARRAY_SIZE(kms->pending_timers); i++)
  msm_atomic_init_pending_timer(&kms->pending_timers[i], kms, i);
}
