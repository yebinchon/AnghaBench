
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bochs_device {int dev; } ;


 int drm_atomic_helper_shutdown (int ) ;
 int drm_mode_config_cleanup (int ) ;

void bochs_kms_fini(struct bochs_device *bochs)
{
 drm_atomic_helper_shutdown(bochs->dev);
 drm_mode_config_cleanup(bochs->dev);
}
