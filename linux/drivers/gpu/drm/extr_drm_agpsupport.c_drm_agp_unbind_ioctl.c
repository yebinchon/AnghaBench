
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_agp_binding {int dummy; } ;


 int drm_agp_unbind (struct drm_device*,struct drm_agp_binding*) ;

int drm_agp_unbind_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct drm_agp_binding *request = data;

 return drm_agp_unbind(dev, request);
}
