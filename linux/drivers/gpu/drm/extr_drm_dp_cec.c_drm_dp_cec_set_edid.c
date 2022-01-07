
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct edid {int dummy; } ;
struct TYPE_8__ {int lock; TYPE_2__* adap; int parent; int name; int unregister_work; } ;
struct drm_dp_aux {TYPE_1__ cec; int transfer; } ;
struct TYPE_9__ {int capabilities; unsigned int available_log_addrs; } ;


 int CEC_CAP_DEFAULTS ;
 int CEC_CAP_MONITOR_ALL ;
 int CEC_CAP_NEEDS_HPD ;
 int CEC_CAP_RC ;
 unsigned int CEC_MAX_LOG_ADDRS ;
 int DP_CEC_MULTIPLE_LA_CAPABLE ;
 int DP_CEC_SNOOPING_CAPABLE ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int cancel_delayed_work_sync (int *) ;
 TYPE_2__* cec_allocate_adapter (int *,struct drm_dp_aux*,int ,int,unsigned int) ;
 int cec_delete_adapter (TYPE_2__*) ;
 scalar_t__ cec_register_adapter (TYPE_2__*,int ) ;
 int cec_s_phys_addr_from_edid (TYPE_2__*,struct edid const*) ;
 int cec_unregister_adapter (TYPE_2__*) ;
 int drm_dp_cec_adap_ops ;
 int drm_dp_cec_cap (struct drm_dp_aux*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_dp_cec_set_edid(struct drm_dp_aux *aux, const struct edid *edid)
{
 u32 cec_caps = CEC_CAP_DEFAULTS | CEC_CAP_NEEDS_HPD;
 unsigned int num_las = 1;
 u8 cap;


 if (!aux->transfer)
  return;
 cec_caps &= ~CEC_CAP_RC;

 cancel_delayed_work_sync(&aux->cec.unregister_work);

 mutex_lock(&aux->cec.lock);
 if (!drm_dp_cec_cap(aux, &cap)) {

  cec_unregister_adapter(aux->cec.adap);
  aux->cec.adap = ((void*)0);
  goto unlock;
 }

 if (cap & DP_CEC_SNOOPING_CAPABLE)
  cec_caps |= CEC_CAP_MONITOR_ALL;
 if (cap & DP_CEC_MULTIPLE_LA_CAPABLE)
  num_las = CEC_MAX_LOG_ADDRS;

 if (aux->cec.adap) {
  if (aux->cec.adap->capabilities == cec_caps &&
      aux->cec.adap->available_log_addrs == num_las) {

   cec_s_phys_addr_from_edid(aux->cec.adap, edid);
   goto unlock;
  }




  cec_unregister_adapter(aux->cec.adap);
 }


 aux->cec.adap = cec_allocate_adapter(&drm_dp_cec_adap_ops,
          aux, aux->cec.name, cec_caps,
          num_las);
 if (IS_ERR(aux->cec.adap)) {
  aux->cec.adap = ((void*)0);
  goto unlock;
 }
 if (cec_register_adapter(aux->cec.adap, aux->cec.parent)) {
  cec_delete_adapter(aux->cec.adap);
  aux->cec.adap = ((void*)0);
 } else {





  cec_s_phys_addr_from_edid(aux->cec.adap, edid);
 }
unlock:
 mutex_unlock(&aux->cec.lock);
}
