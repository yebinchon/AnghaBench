
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int unregister_work; int adap; } ;
struct drm_dp_aux {TYPE_1__ cec; int transfer; } ;


 int HZ ;
 int NEVER_UNREG_DELAY ;
 int cancel_delayed_work_sync (int *) ;
 int cec_phys_addr_invalidate (int ) ;
 int drm_dp_cec_cap (struct drm_dp_aux*,int *) ;
 int drm_dp_cec_unregister_delay ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int) ;

void drm_dp_cec_unset_edid(struct drm_dp_aux *aux)
{

 if (!aux->transfer)
  return;

 cancel_delayed_work_sync(&aux->cec.unregister_work);

 mutex_lock(&aux->cec.lock);
 if (!aux->cec.adap)
  goto unlock;

 cec_phys_addr_invalidate(aux->cec.adap);






 if (drm_dp_cec_unregister_delay < NEVER_UNREG_DELAY &&
     !drm_dp_cec_cap(aux, ((void*)0))) {





  schedule_delayed_work(&aux->cec.unregister_work,
          drm_dp_cec_unregister_delay * HZ);
 }
unlock:
 mutex_unlock(&aux->cec.lock);
}
