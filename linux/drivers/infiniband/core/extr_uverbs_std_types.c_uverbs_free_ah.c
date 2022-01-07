
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int driver_udata; } ;
struct ib_uobject {scalar_t__ object; } ;
struct ib_ah {int dummy; } ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;


 int RDMA_DESTROY_AH_SLEEPABLE ;
 int rdma_destroy_ah_user (struct ib_ah*,int ,int *) ;

__attribute__((used)) static int uverbs_free_ah(struct ib_uobject *uobject,
     enum rdma_remove_reason why,
     struct uverbs_attr_bundle *attrs)
{
 return rdma_destroy_ah_user((struct ib_ah *)uobject->object,
        RDMA_DESTROY_AH_SLEEPABLE,
        &attrs->driver_udata);
}
