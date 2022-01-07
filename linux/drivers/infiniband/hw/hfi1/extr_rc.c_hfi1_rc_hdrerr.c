
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rvt_qp {int r_psn; int r_ack_psn; scalar_t__ r_nak_state; } ;
struct hfi1_packet {int ohdr; } ;
struct TYPE_2__ {int n_rc_seqnak; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;
struct hfi1_ctxtdata {int dummy; } ;


 scalar_t__ IB_NAK_PSN_ERROR ;
 scalar_t__ IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST ;
 int delta_psn (scalar_t__,int ) ;
 scalar_t__ hfi1_ruc_check_hdr (struct hfi1_ibport*,struct hfi1_packet*) ;
 scalar_t__ ib_bth_get_opcode (int ) ;
 scalar_t__ ib_bth_get_psn (int ) ;
 int rc_defered_ack (struct hfi1_ctxtdata*,struct rvt_qp*) ;
 struct hfi1_ibport* rcd_to_iport (struct hfi1_ctxtdata*) ;

void hfi1_rc_hdrerr(
 struct hfi1_ctxtdata *rcd,
 struct hfi1_packet *packet,
 struct rvt_qp *qp)
{
 struct hfi1_ibport *ibp = rcd_to_iport(rcd);
 int diff;
 u32 opcode;
 u32 psn;

 if (hfi1_ruc_check_hdr(ibp, packet))
  return;

 psn = ib_bth_get_psn(packet->ohdr);
 opcode = ib_bth_get_opcode(packet->ohdr);


 if (opcode < IB_OPCODE_RC_RDMA_READ_RESPONSE_FIRST) {
  diff = delta_psn(psn, qp->r_psn);
  if (!qp->r_nak_state && diff >= 0) {
   ibp->rvp.n_rc_seqnak++;
   qp->r_nak_state = IB_NAK_PSN_ERROR;

   qp->r_ack_psn = qp->r_psn;
   rc_defered_ack(rcd, qp);
  }
 }
}
