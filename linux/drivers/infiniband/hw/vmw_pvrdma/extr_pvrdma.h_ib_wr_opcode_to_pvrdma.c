
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvrdma_wr_opcode { ____Placeholder_pvrdma_wr_opcode } pvrdma_wr_opcode ;
typedef enum ib_wr_opcode { ____Placeholder_ib_wr_opcode } ib_wr_opcode ;
 int PVRDMA_WR_ATOMIC_CMP_AND_SWP ;
 int PVRDMA_WR_ATOMIC_FETCH_AND_ADD ;
 int PVRDMA_WR_ERROR ;
 int PVRDMA_WR_FAST_REG_MR ;
 int PVRDMA_WR_LOCAL_INV ;
 int PVRDMA_WR_LSO ;
 int PVRDMA_WR_MASKED_ATOMIC_CMP_AND_SWP ;
 int PVRDMA_WR_MASKED_ATOMIC_FETCH_AND_ADD ;
 int PVRDMA_WR_RDMA_READ ;
 int PVRDMA_WR_RDMA_READ_WITH_INV ;
 int PVRDMA_WR_RDMA_WRITE ;
 int PVRDMA_WR_RDMA_WRITE_WITH_IMM ;
 int PVRDMA_WR_REG_SIG_MR ;
 int PVRDMA_WR_SEND ;
 int PVRDMA_WR_SEND_WITH_IMM ;
 int PVRDMA_WR_SEND_WITH_INV ;

__attribute__((used)) static inline enum pvrdma_wr_opcode ib_wr_opcode_to_pvrdma(enum ib_wr_opcode op)
{
 switch (op) {
 case 134:
  return PVRDMA_WR_RDMA_WRITE;
 case 133:
  return PVRDMA_WR_RDMA_WRITE_WITH_IMM;
 case 130:
  return PVRDMA_WR_SEND;
 case 129:
  return PVRDMA_WR_SEND_WITH_IMM;
 case 136:
  return PVRDMA_WR_RDMA_READ;
 case 142:
  return PVRDMA_WR_ATOMIC_CMP_AND_SWP;
 case 141:
  return PVRDMA_WR_ATOMIC_FETCH_AND_ADD;
 case 139:
  return PVRDMA_WR_LSO;
 case 128:
  return PVRDMA_WR_SEND_WITH_INV;
 case 135:
  return PVRDMA_WR_RDMA_READ_WITH_INV;
 case 140:
  return PVRDMA_WR_LOCAL_INV;
 case 132:
  return PVRDMA_WR_FAST_REG_MR;
 case 138:
  return PVRDMA_WR_MASKED_ATOMIC_CMP_AND_SWP;
 case 137:
  return PVRDMA_WR_MASKED_ATOMIC_FETCH_AND_ADD;
 case 131:
  return PVRDMA_WR_REG_SIG_MR;
 default:
  return PVRDMA_WR_ERROR;
 }
}
