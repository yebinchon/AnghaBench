
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int driver_udata; } ;
struct ib_uobject {scalar_t__ object; } ;
struct ib_mr {int dummy; } ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;


 int ib_dereg_mr_user (struct ib_mr*,int *) ;

__attribute__((used)) static int uverbs_free_mr(struct ib_uobject *uobject,
     enum rdma_remove_reason why,
     struct uverbs_attr_bundle *attrs)
{
 return ib_dereg_mr_user((struct ib_mr *)uobject->object,
    &attrs->driver_udata);
}
