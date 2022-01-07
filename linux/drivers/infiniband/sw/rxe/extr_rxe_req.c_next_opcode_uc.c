
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int opcode; } ;
struct rxe_qp {TYPE_1__ req; } ;


 int EINVAL ;
 int IB_OPCODE_UC_RDMA_WRITE_FIRST ;
 int IB_OPCODE_UC_RDMA_WRITE_LAST ;
 int IB_OPCODE_UC_RDMA_WRITE_LAST_WITH_IMMEDIATE ;
 int IB_OPCODE_UC_RDMA_WRITE_MIDDLE ;
 int IB_OPCODE_UC_RDMA_WRITE_ONLY ;
 int IB_OPCODE_UC_RDMA_WRITE_ONLY_WITH_IMMEDIATE ;
 int IB_OPCODE_UC_SEND_FIRST ;
 int IB_OPCODE_UC_SEND_LAST ;
 int IB_OPCODE_UC_SEND_LAST_WITH_IMMEDIATE ;
 int IB_OPCODE_UC_SEND_MIDDLE ;
 int IB_OPCODE_UC_SEND_ONLY ;
 int IB_OPCODE_UC_SEND_ONLY_WITH_IMMEDIATE ;





__attribute__((used)) static int next_opcode_uc(struct rxe_qp *qp, u32 opcode, int fits)
{
 switch (opcode) {
 case 131:
  if (qp->req.opcode == IB_OPCODE_UC_RDMA_WRITE_FIRST ||
      qp->req.opcode == IB_OPCODE_UC_RDMA_WRITE_MIDDLE)
   return fits ?
    IB_OPCODE_UC_RDMA_WRITE_LAST :
    IB_OPCODE_UC_RDMA_WRITE_MIDDLE;
  else
   return fits ?
    IB_OPCODE_UC_RDMA_WRITE_ONLY :
    IB_OPCODE_UC_RDMA_WRITE_FIRST;

 case 130:
  if (qp->req.opcode == IB_OPCODE_UC_RDMA_WRITE_FIRST ||
      qp->req.opcode == IB_OPCODE_UC_RDMA_WRITE_MIDDLE)
   return fits ?
    IB_OPCODE_UC_RDMA_WRITE_LAST_WITH_IMMEDIATE :
    IB_OPCODE_UC_RDMA_WRITE_MIDDLE;
  else
   return fits ?
    IB_OPCODE_UC_RDMA_WRITE_ONLY_WITH_IMMEDIATE :
    IB_OPCODE_UC_RDMA_WRITE_FIRST;

 case 129:
  if (qp->req.opcode == IB_OPCODE_UC_SEND_FIRST ||
      qp->req.opcode == IB_OPCODE_UC_SEND_MIDDLE)
   return fits ?
    IB_OPCODE_UC_SEND_LAST :
    IB_OPCODE_UC_SEND_MIDDLE;
  else
   return fits ?
    IB_OPCODE_UC_SEND_ONLY :
    IB_OPCODE_UC_SEND_FIRST;

 case 128:
  if (qp->req.opcode == IB_OPCODE_UC_SEND_FIRST ||
      qp->req.opcode == IB_OPCODE_UC_SEND_MIDDLE)
   return fits ?
    IB_OPCODE_UC_SEND_LAST_WITH_IMMEDIATE :
    IB_OPCODE_UC_SEND_MIDDLE;
  else
   return fits ?
    IB_OPCODE_UC_SEND_ONLY_WITH_IMMEDIATE :
    IB_OPCODE_UC_SEND_FIRST;
 }

 return -EINVAL;
}
