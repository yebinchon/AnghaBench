
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_vcpi {int pbn; int aligned_pbn; int num_slots; } ;
struct drm_dp_mst_topology_mgr {int pbn_div; } ;


 int ENOSPC ;
 int drm_dp_mst_assign_payload_id (struct drm_dp_mst_topology_mgr*,struct drm_dp_vcpi*) ;

__attribute__((used)) static int drm_dp_init_vcpi(struct drm_dp_mst_topology_mgr *mgr,
       struct drm_dp_vcpi *vcpi, int pbn, int slots)
{
 int ret;


 if (slots > 63)
  return -ENOSPC;

 vcpi->pbn = pbn;
 vcpi->aligned_pbn = slots * mgr->pbn_div;
 vcpi->num_slots = slots;

 ret = drm_dp_mst_assign_payload_id(mgr, vcpi);
 if (ret < 0)
  return ret;
 return 0;
}
