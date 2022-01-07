
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qedr_ah {int attr; } ;
struct ib_ah {int dummy; } ;


 struct qedr_ah* get_qedr_ah (struct ib_ah*) ;
 int rdma_destroy_ah_attr (int *) ;

void qedr_destroy_ah(struct ib_ah *ibah, u32 flags)
{
 struct qedr_ah *ah = get_qedr_ah(ibah);

 rdma_destroy_ah_attr(&ah->attr);
}
