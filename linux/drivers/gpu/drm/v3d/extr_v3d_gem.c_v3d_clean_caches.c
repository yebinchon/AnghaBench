
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct v3d_dev {int cache_clean_lock; struct drm_device drm; } ;


 int DRM_ERROR (char*) ;
 int V3D_CORE_READ (int,int ) ;
 int V3D_CORE_WRITE (int,int ,int) ;
 int V3D_CTL_L2TCACTL ;
 int V3D_L2TCACTL_FLM ;
 int V3D_L2TCACTL_FLM_CLEAN ;
 int V3D_L2TCACTL_L2TFLS ;
 int V3D_L2TCACTL_TMUWCF ;
 int V3D_SET_FIELD (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_v3d_cache_clean_begin (struct drm_device*) ;
 int trace_v3d_cache_clean_end (struct drm_device*) ;
 scalar_t__ wait_for (int,int) ;

void
v3d_clean_caches(struct v3d_dev *v3d)
{
 struct drm_device *dev = &v3d->drm;
 int core = 0;

 trace_v3d_cache_clean_begin(dev);

 V3D_CORE_WRITE(core, V3D_CTL_L2TCACTL, V3D_L2TCACTL_TMUWCF);
 if (wait_for(!(V3D_CORE_READ(core, V3D_CTL_L2TCACTL) &
         V3D_L2TCACTL_L2TFLS), 100)) {
  DRM_ERROR("Timeout waiting for L1T write combiner flush\n");
 }

 mutex_lock(&v3d->cache_clean_lock);
 V3D_CORE_WRITE(core, V3D_CTL_L2TCACTL,
         V3D_L2TCACTL_L2TFLS |
         V3D_SET_FIELD(V3D_L2TCACTL_FLM_CLEAN, V3D_L2TCACTL_FLM));

 if (wait_for(!(V3D_CORE_READ(core, V3D_CTL_L2TCACTL) &
         V3D_L2TCACTL_L2TFLS), 100)) {
  DRM_ERROR("Timeout waiting for L2T clean\n");
 }

 mutex_unlock(&v3d->cache_clean_lock);

 trace_v3d_cache_clean_end(dev);
}
