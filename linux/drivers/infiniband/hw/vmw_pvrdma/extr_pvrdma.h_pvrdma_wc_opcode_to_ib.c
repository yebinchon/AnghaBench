
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_WC_COMP_SWAP ;
 int IB_WC_FETCH_ADD ;
 int IB_WC_LOCAL_INV ;
 int IB_WC_MASKED_COMP_SWAP ;
 int IB_WC_MASKED_FETCH_ADD ;
 int IB_WC_RDMA_READ ;
 int IB_WC_RDMA_WRITE ;
 int IB_WC_RECV ;
 int IB_WC_RECV_RDMA_WITH_IMM ;
 int IB_WC_REG_MR ;
 int IB_WC_SEND ;
__attribute__((used)) static inline int pvrdma_wc_opcode_to_ib(unsigned int opcode)
{
 switch (opcode) {
 case 128:
  return IB_WC_SEND;
 case 131:
  return IB_WC_RDMA_WRITE;
 case 132:
  return IB_WC_RDMA_READ;
 case 138:
  return IB_WC_COMP_SWAP;
 case 136:
  return IB_WC_FETCH_ADD;
 case 135:
  return IB_WC_LOCAL_INV;
 case 137:
  return IB_WC_REG_MR;
 case 134:
  return IB_WC_MASKED_COMP_SWAP;
 case 133:
  return IB_WC_MASKED_FETCH_ADD;
 case 130:
  return IB_WC_RECV;
 case 129:
  return IB_WC_RECV_RDMA_WITH_IMM;
 default:
  return IB_WC_SEND;
 }
}
