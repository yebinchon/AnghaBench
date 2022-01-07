
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union rdma_network_hdr {int dummy; } rdma_network_hdr ;
struct TYPE_2__ {int psn; int ack_psn; int msn; int status; int opcode; } ;
struct rxe_qp {TYPE_1__ resp; } ;
struct rxe_pkt_info {int mask; int psn; int opcode; } ;
typedef int hdr ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;


 int BTH_PSN_MASK ;
 scalar_t__ IB_QPT_GSI ;
 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_SMI ;
 scalar_t__ IB_QPT_UD ;
 int IB_WC_SUCCESS ;
 int RESPST_ACKNOWLEDGE ;
 int RESPST_CLEANUP ;
 int RESPST_COMPLETE ;
 int RESPST_READ_REPLY ;
 int RXE_ATOMIC_MASK ;
 int RXE_COMP_MASK ;
 int RXE_READ_MASK ;
 int RXE_SEND_MASK ;
 int RXE_WRITE_MASK ;
 int WARN_ON_ONCE (int) ;
 int build_rdma_network_hdr (union rdma_network_hdr*,struct rxe_pkt_info*) ;
 union rdma_network_hdr* payload_addr (struct rxe_pkt_info*) ;
 int payload_size (struct rxe_pkt_info*) ;
 int process_atomic (struct rxe_qp*,struct rxe_pkt_info*) ;
 scalar_t__ qp_type (struct rxe_qp*) ;
 int send_data_in (struct rxe_qp*,union rdma_network_hdr*,int) ;
 int write_data_in (struct rxe_qp*,struct rxe_pkt_info*) ;

__attribute__((used)) static enum resp_states execute(struct rxe_qp *qp, struct rxe_pkt_info *pkt)
{
 enum resp_states err;

 if (pkt->mask & RXE_SEND_MASK) {
  if (qp_type(qp) == IB_QPT_UD ||
      qp_type(qp) == IB_QPT_SMI ||
      qp_type(qp) == IB_QPT_GSI) {
   union rdma_network_hdr hdr;

   build_rdma_network_hdr(&hdr, pkt);

   err = send_data_in(qp, &hdr, sizeof(hdr));
   if (err)
    return err;
  }
  err = send_data_in(qp, payload_addr(pkt), payload_size(pkt));
  if (err)
   return err;
 } else if (pkt->mask & RXE_WRITE_MASK) {
  err = write_data_in(qp, pkt);
  if (err)
   return err;
 } else if (pkt->mask & RXE_READ_MASK) {

  qp->resp.msn++;
  return RESPST_READ_REPLY;
 } else if (pkt->mask & RXE_ATOMIC_MASK) {
  err = process_atomic(qp, pkt);
  if (err)
   return err;
 } else {

  WARN_ON_ONCE(1);
 }


 qp->resp.psn = (pkt->psn + 1) & BTH_PSN_MASK;
 qp->resp.ack_psn = qp->resp.psn;

 qp->resp.opcode = pkt->opcode;
 qp->resp.status = IB_WC_SUCCESS;

 if (pkt->mask & RXE_COMP_MASK) {

  qp->resp.msn++;
  return RESPST_COMPLETE;
 } else if (qp_type(qp) == IB_QPT_RC)
  return RESPST_ACKNOWLEDGE;
 else
  return RESPST_CLEANUP;
}
