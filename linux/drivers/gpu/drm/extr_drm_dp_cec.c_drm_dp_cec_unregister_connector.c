
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * adap; int unregister_work; } ;
struct drm_dp_aux {TYPE_1__ cec; } ;


 int cancel_delayed_work_sync (int *) ;
 int cec_unregister_adapter (int *) ;

void drm_dp_cec_unregister_connector(struct drm_dp_aux *aux)
{
 if (!aux->cec.adap)
  return;
 cancel_delayed_work_sync(&aux->cec.unregister_work);
 cec_unregister_adapter(aux->cec.adap);
 aux->cec.adap = ((void*)0);
}
