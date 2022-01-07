
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_packet {int opcode; TYPE_1__* qp; } ;
typedef int * opcode_handler ;
struct TYPE_2__ {size_t state; int allowed_ops; } ;


 int IB_OPCODE_CNP ;
 int RVT_OPCODE_QP_MASK ;
 int RVT_PROCESS_RECV_OK ;
 int* ib_rvt_state_ops ;
 int ** opcode_handler_tbl ;

__attribute__((used)) static inline opcode_handler qp_ok(struct hfi1_packet *packet)
{
 if (!(ib_rvt_state_ops[packet->qp->state] & RVT_PROCESS_RECV_OK))
  return ((void*)0);
 if (((packet->opcode & RVT_OPCODE_QP_MASK) ==
      packet->qp->allowed_ops) ||
     (packet->opcode == IB_OPCODE_CNP))
  return opcode_handler_tbl[packet->opcode];

 return ((void*)0);
}
