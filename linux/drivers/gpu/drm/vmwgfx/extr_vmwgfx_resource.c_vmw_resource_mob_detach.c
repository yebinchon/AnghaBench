
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_resource {int used_prio; int mob_head; struct vmw_buffer_object* backup; } ;
struct TYPE_3__ {int resv; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct vmw_buffer_object {TYPE_2__ base; } ;


 int dma_resv_assert_held (int ) ;
 int list_del_init (int *) ;
 int vmw_bo_prio_del (struct vmw_buffer_object*,int ) ;
 scalar_t__ vmw_resource_mob_attached (struct vmw_resource*) ;

void vmw_resource_mob_detach(struct vmw_resource *res)
{
 struct vmw_buffer_object *backup = res->backup;

 dma_resv_assert_held(backup->base.base.resv);
 if (vmw_resource_mob_attached(res)) {
  list_del_init(&res->mob_head);
  vmw_bo_prio_del(backup, res->used_prio);
 }
}
