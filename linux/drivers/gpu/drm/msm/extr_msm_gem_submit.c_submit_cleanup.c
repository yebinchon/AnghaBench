
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gem_submit {unsigned int nr_bos; int ticket; TYPE_1__* bos; } ;
struct msm_gem_object {int base; int submit_entry; } ;
struct TYPE_2__ {struct msm_gem_object* obj; } ;


 int drm_gem_object_put (int *) ;
 int list_del_init (int *) ;
 int submit_unlock_unpin_bo (struct msm_gem_submit*,unsigned int,int) ;
 int ww_acquire_fini (int *) ;

__attribute__((used)) static void submit_cleanup(struct msm_gem_submit *submit)
{
 unsigned i;

 for (i = 0; i < submit->nr_bos; i++) {
  struct msm_gem_object *msm_obj = submit->bos[i].obj;
  submit_unlock_unpin_bo(submit, i, 0);
  list_del_init(&msm_obj->submit_entry);
  drm_gem_object_put(&msm_obj->base);
 }

 ww_acquire_fini(&submit->ticket);
}
