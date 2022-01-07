
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_private_state {int dummy; } ;
struct komeda_pipeline_state {struct drm_private_state obj; scalar_t__ active_comps; } ;
struct drm_private_obj {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_private_obj_duplicate_state (struct drm_private_obj*,struct drm_private_state*) ;
 struct komeda_pipeline_state* kmemdup (int ,int,int ) ;

__attribute__((used)) static struct drm_private_state *
komeda_pipeline_atomic_duplicate_state(struct drm_private_obj *obj)
{
 struct komeda_pipeline_state *st;

 st = kmemdup(obj->state, sizeof(*st), GFP_KERNEL);
 if (!st)
  return ((void*)0);

 st->active_comps = 0;

 __drm_atomic_helper_private_obj_duplicate_state(obj, &st->obj);

 return &st->obj;
}
