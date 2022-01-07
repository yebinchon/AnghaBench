
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cm_id; } ;
struct srpt_rdma_ch {TYPE_1__ ib_cm; } ;
struct ib_qp_attr {int max_rd_atomic; int qp_state; } ;
struct ib_qp {int dummy; } ;


 int IB_QPS_RTS ;
 int ib_cm_init_qp_attr (int ,struct ib_qp_attr*,int*) ;
 int ib_modify_qp (struct ib_qp*,struct ib_qp_attr*,int) ;

__attribute__((used)) static int srpt_ch_qp_rts(struct srpt_rdma_ch *ch, struct ib_qp *qp)
{
 struct ib_qp_attr qp_attr;
 int attr_mask;
 int ret;

 qp_attr.qp_state = IB_QPS_RTS;
 ret = ib_cm_init_qp_attr(ch->ib_cm.cm_id, &qp_attr, &attr_mask);
 if (ret)
  goto out;

 qp_attr.max_rd_atomic = 4;

 ret = ib_modify_qp(qp, &qp_attr, attr_mask);

out:
 return ret;
}
