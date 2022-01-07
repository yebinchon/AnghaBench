
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct msm_gem_submit {int valid; int nr_bos; TYPE_1__* bos; int aspace; } ;
struct msm_gem_object {int base; } ;
struct TYPE_2__ {scalar_t__ iova; int flags; struct msm_gem_object* obj; } ;


 int BO_PINNED ;
 int BO_VALID ;
 int msm_gem_get_and_pin_iova (int *,int ,scalar_t__*) ;

__attribute__((used)) static int submit_pin_objects(struct msm_gem_submit *submit)
{
 int i, ret = 0;

 submit->valid = 1;

 for (i = 0; i < submit->nr_bos; i++) {
  struct msm_gem_object *msm_obj = submit->bos[i].obj;
  uint64_t iova;


  ret = msm_gem_get_and_pin_iova(&msm_obj->base,
    submit->aspace, &iova);

  if (ret)
   break;

  submit->bos[i].flags |= BO_PINNED;

  if (iova == submit->bos[i].iova) {
   submit->bos[i].flags |= BO_VALID;
  } else {
   submit->bos[i].iova = iova;

   submit->bos[i].flags &= ~BO_VALID;
   submit->valid = 0;
  }
 }

 return ret;
}
