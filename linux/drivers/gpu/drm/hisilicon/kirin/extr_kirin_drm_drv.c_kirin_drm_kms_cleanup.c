
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int kirin_drm_private_cleanup (struct drm_device*) ;

__attribute__((used)) static int kirin_drm_kms_cleanup(struct drm_device *dev)
{
 drm_kms_helper_poll_fini(dev);
 kirin_drm_private_cleanup(dev);
 drm_mode_config_cleanup(dev);

 return 0;
}
