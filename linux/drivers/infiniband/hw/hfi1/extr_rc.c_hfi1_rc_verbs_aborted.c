
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rvt_qp {int s_flags; } ;
struct ib_other_headers {int * bth; } ;
struct hfi1_opa_header {int dummy; } ;


 int ATOMIC_ACKNOWLEDGE ;
 int IB_BTH_REQ_ACK ;
 scalar_t__ OP (int ) ;
 int RDMA_READ_RESPONSE_FIRST ;
 int READ_RESP ;
 int RVT_S_SEND_ONE ;
 scalar_t__ TID_OP (int ) ;
 int WRITE_RESP ;
 int cpu_to_be32 (int) ;
 struct ib_other_headers* hfi1_get_rc_ohdr (struct hfi1_opa_header*) ;
 scalar_t__ ib_bth_get_opcode (struct ib_other_headers*) ;
 int ib_bth_get_psn (struct ib_other_headers*) ;

void hfi1_rc_verbs_aborted(struct rvt_qp *qp, struct hfi1_opa_header *opah)
{
 struct ib_other_headers *ohdr = hfi1_get_rc_ohdr(opah);
 u8 opcode = ib_bth_get_opcode(ohdr);
 u32 psn;


 if ((opcode >= OP(RDMA_READ_RESPONSE_FIRST) &&
      opcode <= OP(ATOMIC_ACKNOWLEDGE)) ||
     opcode == TID_OP(READ_RESP) ||
     opcode == TID_OP(WRITE_RESP))
  return;

 psn = ib_bth_get_psn(ohdr) | IB_BTH_REQ_ACK;
 ohdr->bth[2] = cpu_to_be32(psn);
 qp->s_flags |= RVT_S_SEND_ONE;
}
