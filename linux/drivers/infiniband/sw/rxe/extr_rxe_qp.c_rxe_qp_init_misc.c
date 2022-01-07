
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_6__ {int qp_num; } ;
struct TYPE_5__ {int path_mtu; int port_num; } ;
struct TYPE_4__ {void* index; } ;
struct rxe_qp {int skb_out; int ssn; int state_lock; int grp_lock; int send_pkts; int grp_list; TYPE_3__ ibqp; TYPE_2__ attr; TYPE_1__ pelem; int mtu; int sq_sig_type; } ;
struct rxe_port {void* qp_gsi_index; void* qp_smi_index; } ;
struct rxe_dev {struct rxe_port port; } ;
struct ib_qp_init_attr {int qp_type; int port_num; int sq_sig_type; } ;




 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int ib_mtu_enum_to_int (int) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void rxe_qp_init_misc(struct rxe_dev *rxe, struct rxe_qp *qp,
        struct ib_qp_init_attr *init)
{
 struct rxe_port *port;
 u32 qpn;

 qp->sq_sig_type = init->sq_sig_type;
 qp->attr.path_mtu = 1;
 qp->mtu = ib_mtu_enum_to_int(qp->attr.path_mtu);

 qpn = qp->pelem.index;
 port = &rxe->port;

 switch (init->qp_type) {
 case 128:
  qp->ibqp.qp_num = 0;
  port->qp_smi_index = qpn;
  qp->attr.port_num = init->port_num;
  break;

 case 129:
  qp->ibqp.qp_num = 1;
  port->qp_gsi_index = qpn;
  qp->attr.port_num = init->port_num;
  break;

 default:
  qp->ibqp.qp_num = qpn;
  break;
 }

 INIT_LIST_HEAD(&qp->grp_list);

 skb_queue_head_init(&qp->send_pkts);

 spin_lock_init(&qp->grp_lock);
 spin_lock_init(&qp->state_lock);

 atomic_set(&qp->ssn, 0);
 atomic_set(&qp->skb_out, 0);
}
