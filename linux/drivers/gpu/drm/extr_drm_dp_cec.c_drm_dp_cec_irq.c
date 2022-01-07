
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; int adap; } ;
struct drm_dp_aux {TYPE_1__ cec; int transfer; } ;


 int DP_CEC_IRQ ;
 int DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 ;
 int drm_dp_cec_handle_irq (struct drm_dp_aux*) ;
 int drm_dp_dpcd_readb (struct drm_dp_aux*,int ,int*) ;
 int drm_dp_dpcd_writeb (struct drm_dp_aux*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_dp_cec_irq(struct drm_dp_aux *aux)
{
 u8 cec_irq;
 int ret;


 if (!aux->transfer)
  return;

 mutex_lock(&aux->cec.lock);
 if (!aux->cec.adap)
  goto unlock;

 ret = drm_dp_dpcd_readb(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1,
    &cec_irq);
 if (ret < 0 || !(cec_irq & DP_CEC_IRQ))
  goto unlock;

 drm_dp_cec_handle_irq(aux);
 drm_dp_dpcd_writeb(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1, DP_CEC_IRQ);
unlock:
 mutex_unlock(&aux->cec.lock);
}
