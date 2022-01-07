
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane {int name; scalar_t__ state; TYPE_2__* funcs; int head; int base; int modifiers; int format_types; int mutex; struct drm_device* dev; } ;
struct TYPE_3__ {int num_total_plane; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct TYPE_4__ {int (* atomic_destroy_state ) (struct drm_plane*,scalar_t__) ;} ;


 int BUG_ON (int ) ;
 int WARN_ON (int) ;
 int drm_mode_object_unregister (struct drm_device*,int *) ;
 int drm_modeset_lock_fini (int *) ;
 int kfree (int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int memset (struct drm_plane*,int ,int) ;
 int stub1 (struct drm_plane*,scalar_t__) ;

void drm_plane_cleanup(struct drm_plane *plane)
{
 struct drm_device *dev = plane->dev;

 drm_modeset_lock_fini(&plane->mutex);

 kfree(plane->format_types);
 kfree(plane->modifiers);
 drm_mode_object_unregister(dev, &plane->base);

 BUG_ON(list_empty(&plane->head));






 list_del(&plane->head);
 dev->mode_config.num_total_plane--;

 WARN_ON(plane->state && !plane->funcs->atomic_destroy_state);
 if (plane->state && plane->funcs->atomic_destroy_state)
  plane->funcs->atomic_destroy_state(plane, plane->state);

 kfree(plane->name);

 memset(plane, 0, sizeof(*plane));
}
