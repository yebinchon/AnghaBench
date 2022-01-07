
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_dev {int bo_lock; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct vc4_bo {int size_head; int unref_head; TYPE_2__ base; } ;


 int list_del (int *) ;
 int lockdep_assert_held (int *) ;
 struct vc4_dev* to_vc4_dev (int ) ;

__attribute__((used)) static void vc4_bo_remove_from_cache(struct vc4_bo *bo)
{
 struct vc4_dev *vc4 = to_vc4_dev(bo->base.base.dev);

 lockdep_assert_held(&vc4->bo_lock);
 list_del(&bo->unref_head);
 list_del(&bo->size_head);
}
