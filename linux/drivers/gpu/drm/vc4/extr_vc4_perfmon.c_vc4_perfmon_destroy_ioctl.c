
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_perfmon {int dummy; } ;
struct TYPE_2__ {int lock; int idr; } ;
struct vc4_file {TYPE_1__ perfmon; } ;
struct vc4_dev {int v3d; } ;
struct drm_vc4_perfmon_destroy {int id; } ;
struct drm_file {struct vc4_file* driver_priv; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*) ;
 int EINVAL ;
 int ENODEV ;
 struct vc4_perfmon* idr_remove (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_perfmon_put (struct vc4_perfmon*) ;

int vc4_perfmon_destroy_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_file *vc4file = file_priv->driver_priv;
 struct drm_vc4_perfmon_destroy *req = data;
 struct vc4_perfmon *perfmon;

 if (!vc4->v3d) {
  DRM_DEBUG("Destroying perfmon no VC4 V3D probed\n");
  return -ENODEV;
 }

 mutex_lock(&vc4file->perfmon.lock);
 perfmon = idr_remove(&vc4file->perfmon.idr, req->id);
 mutex_unlock(&vc4file->perfmon.lock);

 if (!perfmon)
  return -EINVAL;

 vc4_perfmon_put(perfmon);
 return 0;
}
