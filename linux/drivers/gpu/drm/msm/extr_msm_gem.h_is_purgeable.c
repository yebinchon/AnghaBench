
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int import_attach; int dma_buf; TYPE_1__* dev; } ;
struct msm_gem_object {scalar_t__ madv; TYPE_2__ base; scalar_t__ sgt; } ;
struct TYPE_3__ {int struct_mutex; } ;


 scalar_t__ MSM_MADV_DONTNEED ;
 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static inline bool is_purgeable(struct msm_gem_object *msm_obj)
{
 WARN_ON(!mutex_is_locked(&msm_obj->base.dev->struct_mutex));
 return (msm_obj->madv == MSM_MADV_DONTNEED) && msm_obj->sgt &&
   !msm_obj->base.dma_buf && !msm_obj->base.import_attach;
}
