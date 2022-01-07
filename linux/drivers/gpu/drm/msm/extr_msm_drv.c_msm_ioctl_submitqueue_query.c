
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int driver_priv; } ;
struct drm_device {int dummy; } ;


 int msm_submitqueue_query (struct drm_device*,int ,void*) ;

__attribute__((used)) static int msm_ioctl_submitqueue_query(struct drm_device *dev, void *data,
  struct drm_file *file)
{
 return msm_submitqueue_query(dev, file->driver_priv, data);
}
