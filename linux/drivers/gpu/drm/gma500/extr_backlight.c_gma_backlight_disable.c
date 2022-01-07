
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_psb_private {int backlight_enabled; TYPE_2__* backlight_device; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_3__ {scalar_t__ brightness; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int do_gma_backlight_set (struct drm_device*) ;

void gma_backlight_disable(struct drm_device *dev)
{
}
