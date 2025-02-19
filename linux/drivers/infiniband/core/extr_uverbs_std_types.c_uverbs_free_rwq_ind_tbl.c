
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_wq {int dummy; } ;
struct ib_uobject {struct ib_rwq_ind_table* object; } ;
struct ib_rwq_ind_table {struct ib_wq** ind_tbl; } ;
typedef enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;


 int ib_destroy_rwq_ind_table (struct ib_rwq_ind_table*) ;
 scalar_t__ ib_is_destroy_retryable (int,int,struct ib_uobject*) ;
 int kfree (struct ib_wq**) ;

__attribute__((used)) static int uverbs_free_rwq_ind_tbl(struct ib_uobject *uobject,
       enum rdma_remove_reason why,
       struct uverbs_attr_bundle *attrs)
{
 struct ib_rwq_ind_table *rwq_ind_tbl = uobject->object;
 struct ib_wq **ind_tbl = rwq_ind_tbl->ind_tbl;
 int ret;

 ret = ib_destroy_rwq_ind_table(rwq_ind_tbl);
 if (ib_is_destroy_retryable(ret, why, uobject))
  return ret;

 kfree(ind_tbl);
 return ret;
}
