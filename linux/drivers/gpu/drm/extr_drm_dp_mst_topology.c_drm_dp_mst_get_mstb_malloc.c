
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_branch {int malloc_kref; } ;


 int DRM_DEBUG (char*,struct drm_dp_mst_branch*,int ) ;
 int kref_get (int *) ;
 int kref_read (int *) ;

__attribute__((used)) static void
drm_dp_mst_get_mstb_malloc(struct drm_dp_mst_branch *mstb)
{
 kref_get(&mstb->malloc_kref);
 DRM_DEBUG("mstb %p (%d)\n", mstb, kref_read(&mstb->malloc_kref));
}
