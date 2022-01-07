
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int VIDEO_TYPE ;
 int sis_drm_alloc (struct drm_device*,struct drm_file*,void*,int ) ;

__attribute__((used)) static int sis_fb_alloc(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 return sis_drm_alloc(dev, file_priv, data, VIDEO_TYPE);
}
