
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_branch {int malloc_kref; } ;


 int DRM_DEBUG (char*,struct drm_dp_mst_branch*,scalar_t__) ;
 int drm_dp_free_mst_branch_device ;
 int kref_put (int *,int ) ;
 scalar_t__ kref_read (int *) ;

__attribute__((used)) static void
drm_dp_mst_put_mstb_malloc(struct drm_dp_mst_branch *mstb)
{
 DRM_DEBUG("mstb %p (%d)\n", mstb, kref_read(&mstb->malloc_kref) - 1);
 kref_put(&mstb->malloc_kref, drm_dp_free_mst_branch_device);
}
