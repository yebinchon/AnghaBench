
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_rdma_ch {int qp; } ;
struct ib_qp_attr {int qp_state; } ;


 int IB_QPS_ERR ;
 int IB_QP_STATE ;
 int ib_modify_qp (int ,struct ib_qp_attr*,int ) ;

__attribute__((used)) static int srpt_ch_qp_err(struct srpt_rdma_ch *ch)
{
 struct ib_qp_attr qp_attr;

 qp_attr.qp_state = IB_QPS_ERR;
 return ib_modify_qp(ch->qp, &qp_attr, IB_QP_STATE);
}
