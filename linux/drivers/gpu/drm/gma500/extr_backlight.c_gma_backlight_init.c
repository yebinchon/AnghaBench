
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_psb_private {int backlight_enabled; TYPE_1__* ops; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int (* backlight_init ) (struct drm_device*) ;} ;


 int stub1 (struct drm_device*) ;

int gma_backlight_init(struct drm_device *dev)
{





 return 0;

}
