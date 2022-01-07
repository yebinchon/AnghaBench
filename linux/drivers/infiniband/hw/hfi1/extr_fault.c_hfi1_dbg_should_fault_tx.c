
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int device; } ;
struct rvt_qp {TYPE_1__ ibqp; } ;
struct hfi1_ibdev {TYPE_2__* fault; } ;
struct TYPE_4__ {int * n_txfaults; } ;


 int HFI1_FAULT_DIR_TX ;
 scalar_t__ __hfi1_should_fault (struct hfi1_ibdev*,size_t,int ) ;
 struct hfi1_ibdev* to_idev (int ) ;
 int trace_hfi1_fault_opcode (struct rvt_qp*,size_t) ;

bool hfi1_dbg_should_fault_tx(struct rvt_qp *qp, u32 opcode)
{
 struct hfi1_ibdev *ibd = to_idev(qp->ibqp.device);

 if (__hfi1_should_fault(ibd, opcode, HFI1_FAULT_DIR_TX)) {
  trace_hfi1_fault_opcode(qp, opcode);
  ibd->fault->n_txfaults[opcode]++;
  return 1;
 }
 return 0;
}
