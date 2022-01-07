
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct get_pages_work {int work; int task; int obj; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_7__ {int * work; } ;
struct drm_i915_gem_object {TYPE_2__ base; TYPE_3__ userptr; } ;
struct TYPE_5__ {int userptr_wq; } ;
struct TYPE_8__ {TYPE_1__ mm; } ;


 int EAGAIN ;
 int ENOMEM ;
 struct sg_table* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int __i915_gem_userptr_get_pages_worker ;
 int current ;
 int get_task_struct (int ) ;
 int i915_gem_object_get (struct drm_i915_gem_object*) ;
 struct get_pages_work* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;
 TYPE_4__* to_i915 (int ) ;

__attribute__((used)) static struct sg_table *
__i915_gem_userptr_get_pages_schedule(struct drm_i915_gem_object *obj)
{
 struct get_pages_work *work;
 work = kmalloc(sizeof(*work), GFP_KERNEL);
 if (work == ((void*)0))
  return ERR_PTR(-ENOMEM);

 obj->userptr.work = &work->work;

 work->obj = i915_gem_object_get(obj);

 work->task = current;
 get_task_struct(work->task);

 INIT_WORK(&work->work, __i915_gem_userptr_get_pages_worker);
 queue_work(to_i915(obj->base.dev)->mm.userptr_wq, &work->work);

 return ERR_PTR(-EAGAIN);
}
