
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {TYPE_1__* minor; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dev; } ;


 int drm_agp_acquire (struct drm_device*) ;

int drm_agp_acquire_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file_priv)
{
 return drm_agp_acquire((struct drm_device *) file_priv->minor->dev);
}
