
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_rdma_request {int dummy; } ;
struct rvt_ack_entry {scalar_t__ priv; } ;
struct hfi1_ack_priv {struct tid_rdma_request tid_req; } ;



__attribute__((used)) static inline struct tid_rdma_request *ack_to_tid_req(struct rvt_ack_entry *e)
{
 return &((struct hfi1_ack_priv *)e->priv)->tid_req;
}
