
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adap; char const* name; int unregister_work; struct device* parent; } ;
struct drm_dp_aux {TYPE_1__ cec; int transfer; } ;
struct device {int dummy; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ WARN_ON (int) ;
 int drm_dp_cec_unregister_work ;

void drm_dp_cec_register_connector(struct drm_dp_aux *aux, const char *name,
       struct device *parent)
{
 WARN_ON(aux->cec.adap);
 if (WARN_ON(!aux->transfer))
  return;
 aux->cec.name = name;
 aux->cec.parent = parent;
 INIT_DELAYED_WORK(&aux->cec.unregister_work,
     drm_dp_cec_unregister_work);
}
