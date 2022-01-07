
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_pipeline_state {int obj; struct komeda_pipeline* pipe; } ;
struct komeda_pipeline {int obj; } ;
struct komeda_kms_dev {int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_atomic_private_obj_init (int *,int *,int *,int *) ;
 int komeda_pipeline_obj_funcs ;
 struct komeda_pipeline_state* kzalloc (int,int ) ;

__attribute__((used)) static int komeda_pipeline_obj_add(struct komeda_kms_dev *kms,
       struct komeda_pipeline *pipe)
{
 struct komeda_pipeline_state *st;

 st = kzalloc(sizeof(*st), GFP_KERNEL);
 if (!st)
  return -ENOMEM;

 st->pipe = pipe;
 drm_atomic_private_obj_init(&kms->base, &pipe->obj, &st->obj,
        &komeda_pipeline_obj_funcs);

 return 0;
}
