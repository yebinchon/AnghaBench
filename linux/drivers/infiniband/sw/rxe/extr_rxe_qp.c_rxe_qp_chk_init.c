
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_port {scalar_t__ qp_gsi_index; scalar_t__ qp_smi_index; } ;
struct rxe_dev {struct rxe_port port; int ib_dev; } ;
struct ib_qp_cap {int dummy; } ;
struct ib_qp_init_attr {int port_num; scalar_t__ qp_type; int srq; int send_cq; int recv_cq; struct ib_qp_cap cap; } ;


 int EINVAL ;
 scalar_t__ IB_QPT_GSI ;
 scalar_t__ IB_QPT_SMI ;
 int pr_warn (char*,...) ;
 int rdma_is_port_valid (int *,int) ;
 scalar_t__ rxe_qp_chk_cap (struct rxe_dev*,struct ib_qp_cap*,int) ;

int rxe_qp_chk_init(struct rxe_dev *rxe, struct ib_qp_init_attr *init)
{
 struct ib_qp_cap *cap = &init->cap;
 struct rxe_port *port;
 int port_num = init->port_num;

 if (!init->recv_cq || !init->send_cq) {
  pr_warn("missing cq\n");
  goto err1;
 }

 if (rxe_qp_chk_cap(rxe, cap, !!init->srq))
  goto err1;

 if (init->qp_type == IB_QPT_SMI || init->qp_type == IB_QPT_GSI) {
  if (!rdma_is_port_valid(&rxe->ib_dev, port_num)) {
   pr_warn("invalid port = %d\n", port_num);
   goto err1;
  }

  port = &rxe->port;

  if (init->qp_type == IB_QPT_SMI && port->qp_smi_index) {
   pr_warn("SMI QP exists for port %d\n", port_num);
   goto err1;
  }

  if (init->qp_type == IB_QPT_GSI && port->qp_gsi_index) {
   pr_warn("GSI QP exists for port %d\n", port_num);
   goto err1;
  }
 }

 return 0;

err1:
 return -EINVAL;
}
