
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_vcpi {int vcpi; } ;
struct drm_dp_mst_topology_mgr {int max_payloads; int payload_lock; struct drm_dp_vcpi** proposed_vcpis; int vcpi_mask; int payload_mask; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int EINVAL ;
 int find_first_zero_bit (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int,int *) ;

__attribute__((used)) static int drm_dp_mst_assign_payload_id(struct drm_dp_mst_topology_mgr *mgr,
     struct drm_dp_vcpi *vcpi)
{
 int ret, vcpi_ret;

 mutex_lock(&mgr->payload_lock);
 ret = find_first_zero_bit(&mgr->payload_mask, mgr->max_payloads + 1);
 if (ret > mgr->max_payloads) {
  ret = -EINVAL;
  DRM_DEBUG_KMS("out of payload ids %d\n", ret);
  goto out_unlock;
 }

 vcpi_ret = find_first_zero_bit(&mgr->vcpi_mask, mgr->max_payloads + 1);
 if (vcpi_ret > mgr->max_payloads) {
  ret = -EINVAL;
  DRM_DEBUG_KMS("out of vcpi ids %d\n", ret);
  goto out_unlock;
 }

 set_bit(ret, &mgr->payload_mask);
 set_bit(vcpi_ret, &mgr->vcpi_mask);
 vcpi->vcpi = vcpi_ret + 1;
 mgr->proposed_vcpis[ret - 1] = vcpi;
out_unlock:
 mutex_unlock(&mgr->payload_lock);
 return ret;
}
