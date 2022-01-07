
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int connection_mutex; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct drm_connector {TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_3__ {int link_status; } ;


 int drm_modeset_lock (int *,int *) ;
 int drm_modeset_unlock (int *) ;

void drm_connector_set_link_status_property(struct drm_connector *connector,
         uint64_t link_status)
{
 struct drm_device *dev = connector->dev;

 drm_modeset_lock(&dev->mode_config.connection_mutex, ((void*)0));
 connector->state->link_status = link_status;
 drm_modeset_unlock(&dev->mode_config.connection_mutex);
}
