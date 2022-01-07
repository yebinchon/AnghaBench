
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_11__ {int qp_type; } ;
struct rvt_qp {size_t state; int r_lock; int rspwait; int r_flags; int r_psn; int r_ack_psn; int r_nak_state; TYPE_5__ ibqp; } ;
struct rvt_dev_info {int dummy; } ;
struct TYPE_12__ {int n_rc_seqnak; int n_pkt_drops; } ;
struct qib_ibport {TYPE_6__ rvp; } ;
struct qib_pportdata {int lmc; int lid; struct qib_devdata* dd; struct qib_ibport ibport_data; } ;
struct qib_message_header {int dummy; } ;
struct TYPE_7__ {struct rvt_dev_info rdi; } ;
struct qib_devdata {TYPE_1__ verbs_dev; } ;
struct qib_ctxtdata {int qp_wait_list; } ;
struct ib_other_headers {int * bth; } ;
struct TYPE_8__ {scalar_t__ next_hdr; int version_tclass_flow; } ;
struct TYPE_9__ {TYPE_2__ grh; struct ib_other_headers oth; } ;
struct TYPE_10__ {TYPE_3__ l; struct ib_other_headers oth; } ;
struct ib_header {TYPE_4__ u; int * lrh; } ;
typedef int __le32 ;


 scalar_t__ IB_GRH_NEXT_HDR ;
 int IB_GRH_VERSION ;
 int IB_GRH_VERSION_SHIFT ;
 int IB_MULTICAST_LID_BASE ;
 int IB_NAK_PSN_ERROR ;
 int IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST ;





 int QIB_LRH_BTH ;
 int QIB_LRH_GRH ;
 int QIB_MULTICAST_QPN ;
 int QLOGIC_IB_RHF_H_ICRCERR ;
 int QLOGIC_IB_RHF_H_TIDERR ;
 int QLOGIC_IB_RHF_H_VCRCERR ;
 int RVT_PROCESS_RECV_OK ;
 int RVT_QPN_MASK ;
 int RVT_R_RSP_NAK ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int* ib_rvt_state_ops ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int qib_cmp24 (int,int ) ;
 int qib_hdrget_length_in_bytes (int *) ;
 int qib_ruc_check_hdr (struct qib_ibport*,struct ib_header*,int,struct rvt_qp*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rvt_get_qp (struct rvt_qp*) ;
 struct rvt_qp* rvt_lookup_qpn (struct rvt_dev_info*,TYPE_6__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 qib_rcv_hdrerr(struct qib_ctxtdata *rcd, struct qib_pportdata *ppd,
     u32 ctxt, u32 eflags, u32 l, u32 etail,
     __le32 *rhf_addr, struct qib_message_header *rhdr)
{
 u32 ret = 0;

 if (eflags & (QLOGIC_IB_RHF_H_ICRCERR | QLOGIC_IB_RHF_H_VCRCERR))
  ret = 1;
 else if (eflags == QLOGIC_IB_RHF_H_TIDERR) {

  struct ib_header *hdr = (struct ib_header *)rhdr;
  struct ib_other_headers *ohdr = ((void*)0);
  struct qib_ibport *ibp = &ppd->ibport_data;
  struct qib_devdata *dd = ppd->dd;
  struct rvt_dev_info *rdi = &dd->verbs_dev.rdi;
  struct rvt_qp *qp = ((void*)0);
  u32 tlen = qib_hdrget_length_in_bytes(rhf_addr);
  u16 lid = be16_to_cpu(hdr->lrh[1]);
  int lnh = be16_to_cpu(hdr->lrh[0]) & 3;
  u32 qp_num;
  u32 opcode;
  u32 psn;
  int diff;


  if (tlen < 24)
   goto drop;

  if (lid < be16_to_cpu(IB_MULTICAST_LID_BASE)) {
   lid &= ~((1 << ppd->lmc) - 1);
   if (unlikely(lid != ppd->lid))
    goto drop;
  }


  if (lnh == QIB_LRH_BTH)
   ohdr = &hdr->u.oth;
  else if (lnh == QIB_LRH_GRH) {
   u32 vtf;

   ohdr = &hdr->u.l.oth;
   if (hdr->u.l.grh.next_hdr != IB_GRH_NEXT_HDR)
    goto drop;
   vtf = be32_to_cpu(hdr->u.l.grh.version_tclass_flow);
   if ((vtf >> IB_GRH_VERSION_SHIFT) != IB_GRH_VERSION)
    goto drop;
  } else
   goto drop;


  opcode = be32_to_cpu(ohdr->bth[0]);
  opcode >>= 24;
  psn = be32_to_cpu(ohdr->bth[2]);


  qp_num = be32_to_cpu(ohdr->bth[1]) & RVT_QPN_MASK;
  if (qp_num != QIB_MULTICAST_QPN) {
   int ruc_res;

   rcu_read_lock();
   qp = rvt_lookup_qpn(rdi, &ibp->rvp, qp_num);
   if (!qp) {
    rcu_read_unlock();
    goto drop;
   }





   spin_lock(&qp->r_lock);


   if (!(ib_rvt_state_ops[qp->state] &
         RVT_PROCESS_RECV_OK)) {
    ibp->rvp.n_pkt_drops++;
    goto unlock;
   }

   switch (qp->ibqp.qp_type) {
   case 131:
    ruc_res =
     qib_ruc_check_hdr(
      ibp, hdr,
      lnh == QIB_LRH_GRH,
      qp,
      be32_to_cpu(ohdr->bth[0]));
    if (ruc_res)
     goto unlock;


    if (opcode <
        IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST) {
     diff = qib_cmp24(psn, qp->r_psn);
     if (!qp->r_nak_state && diff >= 0) {
      ibp->rvp.n_rc_seqnak++;
      qp->r_nak_state =
       IB_NAK_PSN_ERROR;

      qp->r_ack_psn = qp->r_psn;
      if (list_empty(&qp->rspwait)) {
       qp->r_flags |=
        RVT_R_RSP_NAK;
       rvt_get_qp(qp);
       list_add_tail(
        &qp->rspwait,
        &rcd->qp_wait_list);
      }
     }
    }
    break;
   case 130:
   case 132:
   case 128:
   case 129:
   default:

    break;
   }

unlock:
   spin_unlock(&qp->r_lock);
   rcu_read_unlock();
  }
 }

drop:
 return ret;
}
