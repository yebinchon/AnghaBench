
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qp_type; } ;
struct rvt_qp {TYPE_1__ ibqp; } ;
struct rvt_ibport {int n_pkt_drops; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;


 scalar_t__ IB_QPT_RC ;
 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_SUCCESS ;

__attribute__((used)) static enum ib_wc_status loopback_qp_drop(struct rvt_ibport *rvp,
       struct rvt_qp *sqp)
{
 rvp->n_pkt_drops++;




 return sqp->ibqp.qp_type == IB_QPT_RC ?
  IB_WC_RETRY_EXC_ERR : IB_WC_SUCCESS;
}
