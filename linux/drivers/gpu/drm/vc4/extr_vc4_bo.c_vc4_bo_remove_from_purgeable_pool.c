
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct vc4_dev {TYPE_3__ purgeable; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct vc4_bo {TYPE_2__ base; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vc4_dev* to_vc4_dev (int ) ;
 int vc4_bo_remove_from_purgeable_pool_locked (struct vc4_bo*) ;

void vc4_bo_remove_from_purgeable_pool(struct vc4_bo *bo)
{
 struct vc4_dev *vc4 = to_vc4_dev(bo->base.base.dev);

 mutex_lock(&vc4->purgeable.lock);
 vc4_bo_remove_from_purgeable_pool_locked(bo);
 mutex_unlock(&vc4->purgeable.lock);
}
