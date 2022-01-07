
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_kms {unsigned int pending_crtc_mask; TYPE_1__* funcs; int commit_lock; } ;
struct TYPE_2__ {int (* disable_commit ) (struct msm_kms*) ;int (* complete_commit ) (struct msm_kms*,unsigned int) ;int (* wait_flush ) (struct msm_kms*,unsigned int) ;int (* flush_commit ) (struct msm_kms*,unsigned int) ;int (* enable_commit ) (struct msm_kms*) ;} ;


 unsigned int BIT (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct msm_kms*) ;
 int stub2 (struct msm_kms*,unsigned int) ;
 int stub3 (struct msm_kms*,unsigned int) ;
 int stub4 (struct msm_kms*,unsigned int) ;
 int stub5 (struct msm_kms*) ;
 int trace_msm_atomic_async_commit_finish (unsigned int) ;
 int trace_msm_atomic_async_commit_start (unsigned int) ;
 int trace_msm_atomic_flush_commit (unsigned int) ;
 int trace_msm_atomic_wait_flush_finish (unsigned int) ;
 int trace_msm_atomic_wait_flush_start (unsigned int) ;

__attribute__((used)) static void msm_atomic_async_commit(struct msm_kms *kms, int crtc_idx)
{
 unsigned crtc_mask = BIT(crtc_idx);

 trace_msm_atomic_async_commit_start(crtc_mask);

 mutex_lock(&kms->commit_lock);

 if (!(kms->pending_crtc_mask & crtc_mask)) {
  mutex_unlock(&kms->commit_lock);
  goto out;
 }

 kms->pending_crtc_mask &= ~crtc_mask;

 kms->funcs->enable_commit(kms);




 trace_msm_atomic_flush_commit(crtc_mask);
 kms->funcs->flush_commit(kms, crtc_mask);
 mutex_unlock(&kms->commit_lock);




 trace_msm_atomic_wait_flush_start(crtc_mask);
 kms->funcs->wait_flush(kms, crtc_mask);
 trace_msm_atomic_wait_flush_finish(crtc_mask);

 mutex_lock(&kms->commit_lock);
 kms->funcs->complete_commit(kms, crtc_mask);
 mutex_unlock(&kms->commit_lock);
 kms->funcs->disable_commit(kms);

out:
 trace_msm_atomic_async_commit_finish(crtc_mask);
}
