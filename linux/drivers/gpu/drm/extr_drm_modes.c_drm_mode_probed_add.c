
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_display_mode {int head; } ;
struct drm_connector {int probed_modes; TYPE_2__* dev; } ;
struct TYPE_3__ {int mutex; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 int WARN_ON (int) ;
 int list_add_tail (int *,int *) ;
 int mutex_is_locked (int *) ;

void drm_mode_probed_add(struct drm_connector *connector,
    struct drm_display_mode *mode)
{
 WARN_ON(!mutex_is_locked(&connector->dev->mode_config.mutex));

 list_add_tail(&mode->head, &connector->probed_modes);
}
