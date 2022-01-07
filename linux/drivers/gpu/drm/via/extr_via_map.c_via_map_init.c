
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int func; } ;
typedef TYPE_1__ drm_via_init_t ;


 int DRM_DEBUG (char*) ;
 int EINVAL ;


 int via_do_cleanup_map (struct drm_device*) ;
 int via_do_init_map (struct drm_device*,TYPE_1__*) ;

int via_map_init(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_via_init_t *init = data;

 DRM_DEBUG("\n");

 switch (init->func) {
 case 128:
  return via_do_init_map(dev, init);
 case 129:
  return via_do_cleanup_map(dev);
 }

 return -EINVAL;
}
