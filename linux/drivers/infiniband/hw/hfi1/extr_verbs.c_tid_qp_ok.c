
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hfi1_packet {TYPE_2__* qp; } ;
typedef int * opcode_handler ;
struct TYPE_3__ {scalar_t__ qp_type; } ;
struct TYPE_4__ {size_t state; TYPE_1__ ibqp; } ;


 int IB_OPCODE_TID_RDMA ;
 scalar_t__ IB_QPT_RC ;
 int RVT_OPCODE_QP_MASK ;
 int RVT_PROCESS_RECV_OK ;
 int* ib_rvt_state_ops ;
 int ** opcode_handler_tbl ;

__attribute__((used)) static opcode_handler tid_qp_ok(int opcode, struct hfi1_packet *packet)
{
 if (packet->qp->ibqp.qp_type != IB_QPT_RC ||
     !(ib_rvt_state_ops[packet->qp->state] & RVT_PROCESS_RECV_OK))
  return ((void*)0);
 if ((opcode & RVT_OPCODE_QP_MASK) == IB_OPCODE_TID_RDMA)
  return opcode_handler_tbl[opcode];
 return ((void*)0);
}
