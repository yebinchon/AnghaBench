
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_18__ {size_t pkey_index; int remote_qkey; int remote_qpn; } ;
struct TYPE_17__ {int rkey; int compare_add; int swap; } ;
struct TYPE_14__ {int rkey; } ;
struct TYPE_19__ {TYPE_7__ ud; TYPE_6__ atomic; TYPE_3__ rdma; } ;
struct TYPE_16__ {int invalidate_rkey; int imm_data; } ;
struct rxe_send_wr {int send_flags; TYPE_8__ wr; TYPE_5__ ex; } ;
struct TYPE_15__ {int resid; } ;
struct rxe_send_wqe {int iova; TYPE_4__ dma; struct rxe_send_wr wr; } ;
struct TYPE_20__ {int qp_num; int device; } ;
struct TYPE_13__ {scalar_t__ noack_pkts; int psn; } ;
struct TYPE_12__ {size_t pkey_index; int dest_qp_num; } ;
struct rxe_qp {TYPE_9__ ibqp; TYPE_2__ req; TYPE_1__ attr; } ;
struct rxe_port {int * pkey_tbl; } ;
struct rxe_pkt_info {int opcode; int mask; int paylen; int psn; struct rxe_send_wqe* wqe; scalar_t__ offset; struct rxe_qp* qp; } ;
struct rxe_dev {struct rxe_port port; } ;
struct rxe_av {int dummy; } ;
struct TYPE_11__ {int length; int mask; } ;


 int GSI_QKEY ;
 int IB_OPCODE_RC_COMPARE_SWAP ;
 int IB_OPCODE_RD_COMPARE_SWAP ;
 scalar_t__ IB_QPT_GSI ;
 int IB_SEND_SOLICITED ;
 int RXE_ATMETH_MASK ;
 int RXE_DETH_MASK ;
 int RXE_END_MASK ;
 int RXE_ICRC_SIZE ;
 int RXE_IETH_MASK ;
 int RXE_IMMDT_MASK ;
 scalar_t__ RXE_MAX_PKT_PER_ACK ;
 int RXE_RETH_MASK ;
 int RXE_SEND_MASK ;
 int RXE_WRITE_MASK ;
 int atmeth_set_comp (struct rxe_pkt_info*,int ) ;
 int atmeth_set_rkey (struct rxe_pkt_info*,int ) ;
 int atmeth_set_swap_add (struct rxe_pkt_info*,int ) ;
 int atmeth_set_va (struct rxe_pkt_info*,int ) ;
 int bth_init (struct rxe_pkt_info*,int,int,int ,int,int ,int ,int,int ) ;
 int deth_set_qkey (struct rxe_pkt_info*,int ) ;
 int deth_set_sqp (struct rxe_pkt_info*,int) ;
 int ieth_set_rkey (struct rxe_pkt_info*,int ) ;
 int immdt_set_imm (struct rxe_pkt_info*,int ) ;
 scalar_t__ qp_type (struct rxe_qp*) ;
 int reth_set_len (struct rxe_pkt_info*,int ) ;
 int reth_set_rkey (struct rxe_pkt_info*,int ) ;
 int reth_set_va (struct rxe_pkt_info*,int ) ;
 struct rxe_av* rxe_get_av (struct rxe_pkt_info*) ;
 struct sk_buff* rxe_init_packet (struct rxe_dev*,struct rxe_av*,int,struct rxe_pkt_info*) ;
 TYPE_10__* rxe_opcode ;
 struct rxe_dev* to_rdev (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *init_req_packet(struct rxe_qp *qp,
           struct rxe_send_wqe *wqe,
           int opcode, int payload,
           struct rxe_pkt_info *pkt)
{
 struct rxe_dev *rxe = to_rdev(qp->ibqp.device);
 struct rxe_port *port = &rxe->port;
 struct sk_buff *skb;
 struct rxe_send_wr *ibwr = &wqe->wr;
 struct rxe_av *av;
 int pad = (-payload) & 0x3;
 int paylen;
 int solicited;
 u16 pkey;
 u32 qp_num;
 int ack_req;


 paylen = rxe_opcode[opcode].length + payload + pad + RXE_ICRC_SIZE;




 pkt->opcode = opcode;
 pkt->qp = qp;
 pkt->psn = qp->req.psn;
 pkt->mask = rxe_opcode[opcode].mask;
 pkt->paylen = paylen;
 pkt->offset = 0;
 pkt->wqe = wqe;


 av = rxe_get_av(pkt);
 skb = rxe_init_packet(rxe, av, paylen, pkt);
 if (unlikely(!skb))
  return ((void*)0);


 solicited = (ibwr->send_flags & IB_SEND_SOLICITED) &&
   (pkt->mask & RXE_END_MASK) &&
   ((pkt->mask & (RXE_SEND_MASK)) ||
   (pkt->mask & (RXE_WRITE_MASK | RXE_IMMDT_MASK)) ==
   (RXE_WRITE_MASK | RXE_IMMDT_MASK));

 pkey = (qp_type(qp) == IB_QPT_GSI) ?
   port->pkey_tbl[ibwr->wr.ud.pkey_index] :
   port->pkey_tbl[qp->attr.pkey_index];

 qp_num = (pkt->mask & RXE_DETH_MASK) ? ibwr->wr.ud.remote_qpn :
      qp->attr.dest_qp_num;

 ack_req = ((pkt->mask & RXE_END_MASK) ||
  (qp->req.noack_pkts++ > RXE_MAX_PKT_PER_ACK));
 if (ack_req)
  qp->req.noack_pkts = 0;

 bth_init(pkt, pkt->opcode, solicited, 0, pad, pkey, qp_num,
   ack_req, pkt->psn);


 if (pkt->mask & RXE_RETH_MASK) {
  reth_set_rkey(pkt, ibwr->wr.rdma.rkey);
  reth_set_va(pkt, wqe->iova);
  reth_set_len(pkt, wqe->dma.resid);
 }

 if (pkt->mask & RXE_IMMDT_MASK)
  immdt_set_imm(pkt, ibwr->ex.imm_data);

 if (pkt->mask & RXE_IETH_MASK)
  ieth_set_rkey(pkt, ibwr->ex.invalidate_rkey);

 if (pkt->mask & RXE_ATMETH_MASK) {
  atmeth_set_va(pkt, wqe->iova);
  if (opcode == IB_OPCODE_RC_COMPARE_SWAP ||
      opcode == IB_OPCODE_RD_COMPARE_SWAP) {
   atmeth_set_swap_add(pkt, ibwr->wr.atomic.swap);
   atmeth_set_comp(pkt, ibwr->wr.atomic.compare_add);
  } else {
   atmeth_set_swap_add(pkt, ibwr->wr.atomic.compare_add);
  }
  atmeth_set_rkey(pkt, ibwr->wr.atomic.rkey);
 }

 if (pkt->mask & RXE_DETH_MASK) {
  if (qp->ibqp.qp_num == 1)
   deth_set_qkey(pkt, GSI_QKEY);
  else
   deth_set_qkey(pkt, ibwr->wr.ud.remote_qkey);
  deth_set_sqp(pkt, qp->ibqp.qp_num);
 }

 return skb;
}
