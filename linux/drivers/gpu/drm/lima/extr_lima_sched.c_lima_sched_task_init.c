
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_vm {int dummy; } ;
struct lima_sched_task {int num_bos; int deps; int vm; int bos; int base; } ;
struct lima_sched_context {int base; } ;
struct lima_bo {int gem; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XA_FLAGS_ALLOC ;
 int drm_gem_object_get (int *) ;
 int drm_sched_job_init (int *,int *,struct lima_vm*) ;
 int kfree (int ) ;
 int kmemdup (struct lima_bo**,int,int ) ;
 int lima_vm_get (struct lima_vm*) ;
 int xa_init_flags (int *,int ) ;

int lima_sched_task_init(struct lima_sched_task *task,
    struct lima_sched_context *context,
    struct lima_bo **bos, int num_bos,
    struct lima_vm *vm)
{
 int err, i;

 task->bos = kmemdup(bos, sizeof(*bos) * num_bos, GFP_KERNEL);
 if (!task->bos)
  return -ENOMEM;

 for (i = 0; i < num_bos; i++)
  drm_gem_object_get(&bos[i]->gem);

 err = drm_sched_job_init(&task->base, &context->base, vm);
 if (err) {
  kfree(task->bos);
  return err;
 }

 task->num_bos = num_bos;
 task->vm = lima_vm_get(vm);

 xa_init_flags(&task->deps, XA_FLAGS_ALLOC);

 return 0;
}
