
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct mlx5_ib_flow_matcher {int usecnt; } ;
struct ib_uobject {struct mlx5_ib_flow_matcher* object; } ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;


 int ib_destroy_usecnt (int *,int,struct ib_uobject*) ;
 int kfree (struct mlx5_ib_flow_matcher*) ;

__attribute__((used)) static int flow_matcher_cleanup(struct ib_uobject *uobject,
    enum rdma_remove_reason why,
    struct uverbs_attr_bundle *attrs)
{
 struct mlx5_ib_flow_matcher *obj = uobject->object;
 int ret;

 ret = ib_destroy_usecnt(&obj->usecnt, why, uobject);
 if (ret)
  return ret;

 kfree(obj);
 return 0;
}
