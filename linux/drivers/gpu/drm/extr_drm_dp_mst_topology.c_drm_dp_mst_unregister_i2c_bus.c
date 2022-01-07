
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux {int ddc; } ;


 int i2c_del_adapter (int *) ;

__attribute__((used)) static void drm_dp_mst_unregister_i2c_bus(struct drm_dp_aux *aux)
{
 i2c_del_adapter(&aux->ddc);
}
