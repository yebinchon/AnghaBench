
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shmob_drm_connector {TYPE_2__* backlight; } ;
struct TYPE_3__ {int power; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int DRM_MODE_DPMS_ON ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int backlight_update_status (TYPE_2__*) ;

void shmob_drm_backlight_dpms(struct shmob_drm_connector *scon, int mode)
{
 if (scon->backlight == ((void*)0))
  return;

 scon->backlight->props.power = mode == DRM_MODE_DPMS_ON
         ? FB_BLANK_UNBLANK : FB_BLANK_POWERDOWN;
 backlight_update_status(scon->backlight);
}
