
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_msm_submitqueue {int flags; int id; int prio; } ;
struct drm_file {int driver_priv; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int MSM_SUBMITQUEUE_FLAGS ;
 int msm_submitqueue_create (struct drm_device*,int ,int ,int,int *) ;

__attribute__((used)) static int msm_ioctl_submitqueue_new(struct drm_device *dev, void *data,
  struct drm_file *file)
{
 struct drm_msm_submitqueue *args = data;

 if (args->flags & ~MSM_SUBMITQUEUE_FLAGS)
  return -EINVAL;

 return msm_submitqueue_create(dev, file->driver_priv, args->prio,
  args->flags, &args->id);
}
