
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct TYPE_2__ {int quirk_addfb_prefer_host_byte_order; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_DEBUG_KMS (char*) ;
 int EOPNOTSUPP ;
 int drm_mode_addfb2 (struct drm_device*,void*,struct drm_file*) ;

int drm_mode_addfb2_ioctl(struct drm_device *dev,
     void *data, struct drm_file *file_priv)
{
 return drm_mode_addfb2(dev, data, file_priv);
}
