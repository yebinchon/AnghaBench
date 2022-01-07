
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_uobject {scalar_t__ object; } ;
struct ib_mw {int dummy; } ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;


 int uverbs_dealloc_mw (struct ib_mw*) ;

__attribute__((used)) static int uverbs_free_mw(struct ib_uobject *uobject,
     enum rdma_remove_reason why,
     struct uverbs_attr_bundle *attrs)
{
 return uverbs_dealloc_mw((struct ib_mw *)uobject->object);
}
