
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_poll_work; int poll_enabled; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int cancel_delayed_work_sync (int *) ;

void drm_kms_helper_poll_disable(struct drm_device *dev)
{
 if (!dev->mode_config.poll_enabled)
  return;
 cancel_delayed_work_sync(&dev->mode_config.output_poll_work);
}
