
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_private_state {int dummy; } ;
struct TYPE_2__ {struct drm_private_state obj; } ;
struct komeda_scaler_state {TYPE_1__ base; } ;
struct drm_private_obj {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_private_obj_duplicate_state (struct drm_private_obj*,struct drm_private_state*) ;
 struct komeda_scaler_state* kmemdup (int ,int,int ) ;
 int komeda_component_state_reset (TYPE_1__*) ;

__attribute__((used)) static struct drm_private_state *
komeda_scaler_atomic_duplicate_state(struct drm_private_obj *obj)
{
 struct komeda_scaler_state *st;

 st = kmemdup(obj->state, sizeof(*st), GFP_KERNEL);
 if (!st)
  return ((void*)0);

 komeda_component_state_reset(&st->base);
 __drm_atomic_helper_private_obj_duplicate_state(obj, &st->base.obj);

 return &st->base.obj;
}
