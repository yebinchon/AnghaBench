
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_mst_topology_mgr {int max_payloads; int payload_lock; int payload_mask; TYPE_1__** proposed_vcpis; int vcpi_mask; } ;
struct TYPE_2__ {int vcpi; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int clear_bit (int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void drm_dp_mst_put_payload_id(struct drm_dp_mst_topology_mgr *mgr,
          int vcpi)
{
 int i;
 if (vcpi == 0)
  return;

 mutex_lock(&mgr->payload_lock);
 DRM_DEBUG_KMS("putting payload %d\n", vcpi);
 clear_bit(vcpi - 1, &mgr->vcpi_mask);

 for (i = 0; i < mgr->max_payloads; i++) {
  if (mgr->proposed_vcpis[i])
   if (mgr->proposed_vcpis[i]->vcpi == vcpi) {
    mgr->proposed_vcpis[i] = ((void*)0);
    clear_bit(i + 1, &mgr->payload_mask);
   }
 }
 mutex_unlock(&mgr->payload_lock);
}
