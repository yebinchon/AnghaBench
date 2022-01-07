
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int driver_udata; } ;
struct ib_uobject {struct ib_pd* object; } ;
struct ib_pd {int usecnt; } ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;


 int ib_dealloc_pd_user (struct ib_pd*,int *) ;
 int ib_destroy_usecnt (int *,int,struct ib_uobject*) ;

__attribute__((used)) static int uverbs_free_pd(struct ib_uobject *uobject,
     enum rdma_remove_reason why,
     struct uverbs_attr_bundle *attrs)
{
 struct ib_pd *pd = uobject->object;
 int ret;

 ret = ib_destroy_usecnt(&pd->usecnt, why, uobject);
 if (ret)
  return ret;

 ib_dealloc_pd_user(pd, &attrs->driver_udata);
 return 0;
}
