
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmw_resource {int used_prio; int mob_head; TYPE_3__* func; scalar_t__ res_dirty; struct vmw_buffer_object* backup; } ;
struct TYPE_4__ {int resv; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct vmw_buffer_object {int res_list; TYPE_2__ base; } ;
struct TYPE_6__ {int prio; int dirty_prio; } ;


 int dma_resv_assert_held (int ) ;
 int list_add_tail (int *,int *) ;
 int vmw_bo_prio_add (struct vmw_buffer_object*,int ) ;

void vmw_resource_mob_attach(struct vmw_resource *res)
{
 struct vmw_buffer_object *backup = res->backup;

 dma_resv_assert_held(res->backup->base.base.resv);
 res->used_prio = (res->res_dirty) ? res->func->dirty_prio :
  res->func->prio;
 list_add_tail(&res->mob_head, &backup->res_list);
 vmw_bo_prio_add(backup, res->used_prio);
}
