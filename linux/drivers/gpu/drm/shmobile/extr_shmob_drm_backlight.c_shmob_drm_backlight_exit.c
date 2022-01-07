
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_connector {int backlight; } ;


 int backlight_device_unregister (int ) ;

void shmob_drm_backlight_exit(struct shmob_drm_connector *scon)
{
 backlight_device_unregister(scon->backlight);
}
