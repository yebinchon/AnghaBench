
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cqe_responder {int flags; int imm_data_or_inv_r_Key; int length; } ;
struct TYPE_2__ {void* imm_data; } ;
struct ib_wc {int wc_flags; TYPE_1__ ex; int opcode; void* byte_len; int status; } ;


 int EINVAL ;
 int IB_WC_RECV_RDMA_WITH_IMM ;
 int IB_WC_SUCCESS ;
 int IB_WC_WITH_IMM ;
 int IB_WC_WITH_INVALIDATE ;
 int QEDR_RESP_IMM ;
 int QEDR_RESP_INV ;
 int QEDR_RESP_RDMA ;
 void* cpu_to_be32 (void*) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static inline int qedr_set_ok_cqe_resp_wc(struct rdma_cqe_responder *resp,
       struct ib_wc *wc)
{
 wc->status = IB_WC_SUCCESS;
 wc->byte_len = le32_to_cpu(resp->length);

 if (resp->flags & QEDR_RESP_IMM) {
  wc->ex.imm_data = cpu_to_be32(le32_to_cpu(resp->imm_data_or_inv_r_Key));
  wc->wc_flags |= IB_WC_WITH_IMM;

  if (resp->flags & QEDR_RESP_RDMA)
   wc->opcode = IB_WC_RECV_RDMA_WITH_IMM;

  if (resp->flags & QEDR_RESP_INV)
   return -EINVAL;

 } else if (resp->flags & QEDR_RESP_INV) {
  wc->ex.imm_data = le32_to_cpu(resp->imm_data_or_inv_r_Key);
  wc->wc_flags |= IB_WC_WITH_INVALIDATE;

  if (resp->flags & QEDR_RESP_RDMA)
   return -EINVAL;

 } else if (resp->flags & QEDR_RESP_RDMA) {
  return -EINVAL;
 }

 return 0;
}
