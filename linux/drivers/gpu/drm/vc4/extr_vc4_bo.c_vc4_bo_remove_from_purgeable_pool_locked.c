
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int num; } ;
struct vc4_dev {TYPE_1__ purgeable; } ;
struct TYPE_5__ {scalar_t__ size; int dev; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct vc4_bo {TYPE_3__ base; int size_head; } ;


 int list_del_init (int *) ;
 struct vc4_dev* to_vc4_dev (int ) ;

__attribute__((used)) static void vc4_bo_remove_from_purgeable_pool_locked(struct vc4_bo *bo)
{
 struct vc4_dev *vc4 = to_vc4_dev(bo->base.base.dev);
 list_del_init(&bo->size_head);
 vc4->purgeable.num--;
 vc4->purgeable.size -= bo->base.base.size;
}
