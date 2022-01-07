
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {struct drm_dp_aux* aux; } ;
struct nv50_mstm {TYPE_1__ mgr; } ;
struct drm_dp_aux {int dummy; } ;


 scalar_t__ DP_SINK_COUNT_ESI ;
 int drm_dp_dpcd_read (struct drm_dp_aux*,scalar_t__,int *,int) ;
 int drm_dp_dpcd_write (struct drm_dp_aux*,scalar_t__,int *,int) ;
 int drm_dp_mst_hpd_irq (TYPE_1__*,int *,int*) ;
 int drm_dp_mst_topology_mgr_set_mst (TYPE_1__*,int) ;

void
nv50_mstm_service(struct nv50_mstm *mstm)
{
 struct drm_dp_aux *aux = mstm ? mstm->mgr.aux : ((void*)0);
 bool handled = 1;
 int ret;
 u8 esi[8] = {};

 if (!aux)
  return;

 while (handled) {
  ret = drm_dp_dpcd_read(aux, DP_SINK_COUNT_ESI, esi, 8);
  if (ret != 8) {
   drm_dp_mst_topology_mgr_set_mst(&mstm->mgr, 0);
   return;
  }

  drm_dp_mst_hpd_irq(&mstm->mgr, esi, &handled);
  if (!handled)
   break;

  drm_dp_dpcd_write(aux, DP_SINK_COUNT_ESI + 1, &esi[1], 3);
 }
}
