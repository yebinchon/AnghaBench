
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int qp_type; } ;
struct rvt_qp {size_t state; int remote_qpn; TYPE_3__ ibqp; int r_lock; } ;
struct rvt_dev_info {int dummy; } ;
struct ib_grh {scalar_t__ next_hdr; int version_tclass_flow; } ;
struct TYPE_5__ {struct ib_grh grh; int oth; } ;
struct TYPE_6__ {TYPE_1__ l; int oth; } ;
struct ib_header {TYPE_2__ u; } ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_packet {int rhf; scalar_t__ etype; int * ohdr; void* ebuf; struct ib_grh* grh; struct ib_header* hdr; } ;
struct TYPE_8__ {int n_pkt_drops; } ;
struct hfi1_ibport {scalar_t__* sc_to_sl; TYPE_4__ rvp; } ;
struct hfi1_ibdev {struct rvt_dev_info rdi; } ;
struct hfi1_devdata {struct hfi1_ibdev verbs_dev; } ;
struct hfi1_ctxtdata {int dummy; } ;


 scalar_t__ HFI1_LRH_BTH ;
 scalar_t__ HFI1_LRH_GRH ;
 scalar_t__ IB_CC_SVCTYPE_UC ;
 scalar_t__ IB_CC_SVCTYPE_UD ;
 scalar_t__ IB_GRH_NEXT_HDR ;
 int IB_GRH_VERSION ;
 int IB_GRH_VERSION_SHIFT ;
 int IB_MULTICAST_LID_BASE ;
 scalar_t__ IB_OPCODE_CNP ;



 int RHF_DC_ERR ;
 int RHF_ICRC_ERR ;
 scalar_t__ RHF_RCV_TYPE_BYPASS ;
 int RHF_RCV_TYPE_ERR_SMASK ;

 int RHF_TID_ERR ;
 int RVT_PROCESS_RECV_OK ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 scalar_t__ hfi1_9B_get_sc5 (struct ib_header*,int) ;
 scalar_t__ hfi1_dbg_fault_suppress_err (struct hfi1_ibdev*) ;
 int hfi1_rc_hdrerr (struct hfi1_ctxtdata*,struct hfi1_packet*,struct rvt_qp*) ;
 scalar_t__ ib_bth_get_opcode (int *) ;
 int ib_bth_get_qpn (int *) ;
 int ib_get_dlid (struct ib_header*) ;
 scalar_t__ ib_get_lnh (struct ib_header*) ;
 int ib_get_slid (struct ib_header*) ;
 int* ib_rvt_state_ops ;
 int process_becn (struct hfi1_pportdata*,scalar_t__,int ,int,int,scalar_t__) ;
 struct hfi1_ibport* rcd_to_iport (struct hfi1_ctxtdata*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rhf_pkt_len (int) ;
 int rhf_rcv_type_err (int) ;
 int rhf_use_egr_bfr (int) ;
 struct rvt_qp* rvt_lookup_qpn (struct rvt_dev_info*,TYPE_4__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rcv_hdrerr(struct hfi1_ctxtdata *rcd, struct hfi1_pportdata *ppd,
         struct hfi1_packet *packet)
{
 struct ib_header *rhdr = packet->hdr;
 u32 rte = rhf_rcv_type_err(packet->rhf);
 u32 mlid_base;
 struct hfi1_ibport *ibp = rcd_to_iport(rcd);
 struct hfi1_devdata *dd = ppd->dd;
 struct hfi1_ibdev *verbs_dev = &dd->verbs_dev;
 struct rvt_dev_info *rdi = &verbs_dev->rdi;

 if ((packet->rhf & RHF_DC_ERR) &&
     hfi1_dbg_fault_suppress_err(verbs_dev))
  return;

 if (packet->rhf & RHF_ICRC_ERR)
  return;

 if (packet->etype == RHF_RCV_TYPE_BYPASS) {
  goto drop;
 } else {
  u8 lnh = ib_get_lnh(rhdr);

  mlid_base = be16_to_cpu(IB_MULTICAST_LID_BASE);
  if (lnh == HFI1_LRH_BTH) {
   packet->ohdr = &rhdr->u.oth;
  } else if (lnh == HFI1_LRH_GRH) {
   packet->ohdr = &rhdr->u.l.oth;
   packet->grh = &rhdr->u.l.grh;
  } else {
   goto drop;
  }
 }

 if (packet->rhf & RHF_TID_ERR) {

  u32 tlen = rhf_pkt_len(packet->rhf);
  u32 dlid = ib_get_dlid(rhdr);
  u32 qp_num;


  if (tlen < 24)
   goto drop;


  if (packet->grh) {
   u32 vtf;
   struct ib_grh *grh = packet->grh;

   if (grh->next_hdr != IB_GRH_NEXT_HDR)
    goto drop;
   vtf = be32_to_cpu(grh->version_tclass_flow);
   if ((vtf >> IB_GRH_VERSION_SHIFT) != IB_GRH_VERSION)
    goto drop;
  }


  qp_num = ib_bth_get_qpn(packet->ohdr);
  if (dlid < mlid_base) {
   struct rvt_qp *qp;
   unsigned long flags;

   rcu_read_lock();
   qp = rvt_lookup_qpn(rdi, &ibp->rvp, qp_num);
   if (!qp) {
    rcu_read_unlock();
    goto drop;
   }





   spin_lock_irqsave(&qp->r_lock, flags);


   if (!(ib_rvt_state_ops[qp->state] &
         RVT_PROCESS_RECV_OK)) {
    ibp->rvp.n_pkt_drops++;
   }

   switch (qp->ibqp.qp_type) {
   case 131:
    hfi1_rc_hdrerr(rcd, packet, qp);
    break;
   default:

    break;
   }

   spin_unlock_irqrestore(&qp->r_lock, flags);
   rcu_read_unlock();
  }
 }


 switch (rte) {
 case 128:
 {
  void *ebuf = ((void*)0);
  u8 opcode;

  if (rhf_use_egr_bfr(packet->rhf))
   ebuf = packet->ebuf;

  if (!ebuf)
   goto drop;

  opcode = ib_bth_get_opcode(packet->ohdr);
  if (opcode == IB_OPCODE_CNP) {




   struct rvt_qp *qp = ((void*)0);
   u32 lqpn, rqpn;
   u16 rlid;
   u8 svc_type, sl, sc5;

   sc5 = hfi1_9B_get_sc5(rhdr, packet->rhf);
   sl = ibp->sc_to_sl[sc5];

   lqpn = ib_bth_get_qpn(packet->ohdr);
   rcu_read_lock();
   qp = rvt_lookup_qpn(rdi, &ibp->rvp, lqpn);
   if (!qp) {
    rcu_read_unlock();
    goto drop;
   }

   switch (qp->ibqp.qp_type) {
   case 129:
    rlid = 0;
    rqpn = 0;
    svc_type = IB_CC_SVCTYPE_UD;
    break;
   case 130:
    rlid = ib_get_slid(rhdr);
    rqpn = qp->remote_qpn;
    svc_type = IB_CC_SVCTYPE_UC;
    break;
   default:
    rcu_read_unlock();
    goto drop;
   }

   process_becn(ppd, sl, rlid, lqpn, rqpn, svc_type);
   rcu_read_unlock();
  }

  packet->rhf &= ~RHF_RCV_TYPE_ERR_SMASK;
  break;
 }
 default:
  break;
 }

drop:
 return;
}
