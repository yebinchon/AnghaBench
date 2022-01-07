
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_private_obj {int lock; int state; TYPE_1__* funcs; int head; } ;
struct TYPE_2__ {int (* atomic_destroy_state ) (struct drm_private_obj*,int ) ;} ;


 int drm_modeset_lock_fini (int *) ;
 int list_del (int *) ;
 int stub1 (struct drm_private_obj*,int ) ;

void
drm_atomic_private_obj_fini(struct drm_private_obj *obj)
{
 list_del(&obj->head);
 obj->funcs->atomic_destroy_state(obj, obj->state);
 drm_modeset_lock_fini(&obj->lock);
}
