
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_psb_private {TYPE_2__* backlight_device; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_4__ {scalar_t__ brightness; } ;
struct TYPE_5__ {TYPE_1__ props; } ;


 int backlight_device_unregister (TYPE_2__*) ;
 int backlight_update_status (TYPE_2__*) ;

void gma_backlight_exit(struct drm_device *dev)
{
}
