
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int poll_enabled; int output_poll_work; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int cancel_delayed_work_sync (int *) ;

void drm_kms_helper_poll_fini(struct drm_device *dev)
{
 if (!dev->mode_config.poll_enabled)
  return;

 dev->mode_config.poll_enabled = 0;
 cancel_delayed_work_sync(&dev->mode_config.output_poll_work);
}
