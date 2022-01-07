
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_agp_buffer {int dummy; } ;


 int drm_agp_alloc (struct drm_device*,struct drm_agp_buffer*) ;

int drm_agp_alloc_ioctl(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 struct drm_agp_buffer *request = data;

 return drm_agp_alloc(dev, request);
}
