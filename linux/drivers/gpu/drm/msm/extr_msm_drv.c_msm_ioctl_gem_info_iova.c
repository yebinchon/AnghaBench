
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct msm_drm_private {TYPE_1__* gpu; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {int aspace; } ;


 int EINVAL ;
 int msm_gem_get_iova (struct drm_gem_object*,int ,int *) ;

__attribute__((used)) static int msm_ioctl_gem_info_iova(struct drm_device *dev,
  struct drm_gem_object *obj, uint64_t *iova)
{
 struct msm_drm_private *priv = dev->dev_private;

 if (!priv->gpu)
  return -EINVAL;





 return msm_gem_get_iova(obj, priv->gpu->aspace, iova);
}
