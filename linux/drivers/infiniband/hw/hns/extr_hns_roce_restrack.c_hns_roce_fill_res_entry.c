
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rdma_restrack_entry {scalar_t__ type; } ;


 scalar_t__ RDMA_RESTRACK_CQ ;
 int hns_roce_fill_res_cq_entry (struct sk_buff*,struct rdma_restrack_entry*) ;

int hns_roce_fill_res_entry(struct sk_buff *msg,
       struct rdma_restrack_entry *res)
{
 if (res->type == RDMA_RESTRACK_CQ)
  return hns_roce_fill_res_cq_entry(msg, res);

 return 0;
}
