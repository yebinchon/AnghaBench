
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ resid; } ;
struct rxe_send_wqe {TYPE_1__ dma; } ;
struct rxe_qp {scalar_t__ mtu; } ;


 int EINVAL ;
 int IB_OPCODE_UD_SEND_ONLY ;
 int IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE ;







 int next_opcode_rc (struct rxe_qp*,int ,int) ;
 int next_opcode_uc (struct rxe_qp*,int ,int) ;
 int qp_type (struct rxe_qp*) ;

__attribute__((used)) static int next_opcode(struct rxe_qp *qp, struct rxe_send_wqe *wqe,
         u32 opcode)
{
 int fits = (wqe->dma.resid <= qp->mtu);

 switch (qp_type(qp)) {
 case 133:
  return next_opcode_rc(qp, opcode, fits);

 case 131:
  return next_opcode_uc(qp, opcode, fits);

 case 132:
 case 130:
 case 134:
  switch (opcode) {
  case 129:
   return IB_OPCODE_UD_SEND_ONLY;

  case 128:
   return IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE;
  }
  break;

 default:
  break;
 }

 return -EINVAL;
}
