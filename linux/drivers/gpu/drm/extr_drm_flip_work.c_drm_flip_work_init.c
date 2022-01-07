
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_flip_work {char const* name; int worker; int func; int lock; int commited; int queued; } ;
typedef int drm_flip_func_t ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int flip_worker ;
 int spin_lock_init (int *) ;

void drm_flip_work_init(struct drm_flip_work *work,
  const char *name, drm_flip_func_t func)
{
 work->name = name;
 INIT_LIST_HEAD(&work->queued);
 INIT_LIST_HEAD(&work->commited);
 spin_lock_init(&work->lock);
 work->func = func;

 INIT_WORK(&work->worker, flip_worker);
}
