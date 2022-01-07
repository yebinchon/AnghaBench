
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_dp_mst_topology_mgr {int lock; int mst_primary; } ;
struct drm_dp_mst_branch {int dummy; } ;


 int drm_dp_mst_topology_try_get_mstb (struct drm_dp_mst_branch*) ;
 struct drm_dp_mst_branch* get_mst_branch_device_by_guid_helper (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct drm_dp_mst_branch *
drm_dp_get_mst_branch_device_by_guid(struct drm_dp_mst_topology_mgr *mgr,
         uint8_t *guid)
{
 struct drm_dp_mst_branch *mstb;
 int ret;


 mutex_lock(&mgr->lock);

 mstb = get_mst_branch_device_by_guid_helper(mgr->mst_primary, guid);
 if (mstb) {
  ret = drm_dp_mst_topology_try_get_mstb(mstb);
  if (!ret)
   mstb = ((void*)0);
 }

 mutex_unlock(&mgr->lock);
 return mstb;
}
