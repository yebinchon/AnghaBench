
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_packet {int rhf; } ;


 int RHF_RCV_CONTINUE ;
 int handle_eflags (struct hfi1_packet*) ;
 int hfi1_dbg_should_fault_rx (struct hfi1_packet*) ;
 int hfi1_ib_rcv (struct hfi1_packet*) ;
 scalar_t__ hfi1_setup_9B_packet (struct hfi1_packet*) ;
 int rhf_err_flags (int ) ;
 int trace_hfi1_rcvhdr (struct hfi1_packet*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int process_receive_ib(struct hfi1_packet *packet)
{
 if (hfi1_setup_9B_packet(packet))
  return RHF_RCV_CONTINUE;

 if (unlikely(hfi1_dbg_should_fault_rx(packet)))
  return RHF_RCV_CONTINUE;

 trace_hfi1_rcvhdr(packet);

 if (unlikely(rhf_err_flags(packet->rhf))) {
  handle_eflags(packet);
  return RHF_RCV_CONTINUE;
 }

 hfi1_ib_rcv(packet);
 return RHF_RCV_CONTINUE;
}
