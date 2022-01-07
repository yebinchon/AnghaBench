
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hfi1_packet {size_t opcode; TYPE_2__* rcd; } ;
struct hfi1_ibdev {TYPE_3__* fault; } ;
struct TYPE_6__ {int * n_rxfaults; } ;
struct TYPE_5__ {TYPE_1__* dd; } ;
struct TYPE_4__ {struct hfi1_ibdev verbs_dev; } ;


 int HFI1_FAULT_DIR_RX ;
 scalar_t__ __hfi1_should_fault (struct hfi1_ibdev*,size_t,int ) ;
 int trace_hfi1_fault_packet (struct hfi1_packet*) ;

bool hfi1_dbg_should_fault_rx(struct hfi1_packet *packet)
{
 struct hfi1_ibdev *ibd = &packet->rcd->dd->verbs_dev;

 if (__hfi1_should_fault(ibd, packet->opcode, HFI1_FAULT_DIR_RX)) {
  trace_hfi1_fault_packet(packet);
  ibd->fault->n_rxfaults[packet->opcode]++;
  return 1;
 }
 return 0;
}
