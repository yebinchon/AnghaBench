
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rdma_ah_attr {int dummy; } ;
struct qedr_ah {int attr; } ;
struct ib_udata {int dummy; } ;
struct ib_ah {int dummy; } ;


 struct qedr_ah* get_qedr_ah (struct ib_ah*) ;
 int rdma_copy_ah_attr (int *,struct rdma_ah_attr*) ;

int qedr_create_ah(struct ib_ah *ibah, struct rdma_ah_attr *attr, u32 flags,
     struct ib_udata *udata)
{
 struct qedr_ah *ah = get_qedr_ah(ibah);

 rdma_copy_ah_attr(&ah->attr, attr);

 return 0;
}
