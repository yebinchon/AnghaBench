
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uverbs_attr_bundle {int dummy; } ;
struct ib_uobject {struct ib_flow_action* object; } ;
struct ib_flow_action {TYPE_2__* device; int usecnt; } ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;
struct TYPE_3__ {int (* destroy_flow_action ) (struct ib_flow_action*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int ib_destroy_usecnt (int *,int,struct ib_uobject*) ;
 int stub1 (struct ib_flow_action*) ;

__attribute__((used)) static int uverbs_free_flow_action(struct ib_uobject *uobject,
       enum rdma_remove_reason why,
       struct uverbs_attr_bundle *attrs)
{
 struct ib_flow_action *action = uobject->object;
 int ret;

 ret = ib_destroy_usecnt(&action->usecnt, why, uobject);
 if (ret)
  return ret;

 return action->device->ops.destroy_flow_action(action);
}
