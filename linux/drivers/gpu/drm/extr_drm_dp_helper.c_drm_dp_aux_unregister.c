
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux {int ddc; } ;


 int drm_dp_aux_unregister_devnode (struct drm_dp_aux*) ;
 int i2c_del_adapter (int *) ;

void drm_dp_aux_unregister(struct drm_dp_aux *aux)
{
 drm_dp_aux_unregister_devnode(aux);
 i2c_del_adapter(&aux->ddc);
}
