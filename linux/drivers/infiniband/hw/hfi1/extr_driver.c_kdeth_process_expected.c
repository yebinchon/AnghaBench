
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_packet {struct hfi1_ctxtdata* rcd; int rhf; } ;
struct hfi1_ctxtdata {int ppd; } ;


 int RHF_RCV_CONTINUE ;
 int hfi1_dbg_should_fault_rx (struct hfi1_packet*) ;
 scalar_t__ hfi1_handle_kdeth_eflags (struct hfi1_ctxtdata*,int ,struct hfi1_packet*) ;
 int hfi1_kdeth_expected_rcv (struct hfi1_packet*) ;
 int hfi1_setup_9B_packet (struct hfi1_packet*) ;
 int rhf_err_flags (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int kdeth_process_expected(struct hfi1_packet *packet)
{
 hfi1_setup_9B_packet(packet);
 if (unlikely(hfi1_dbg_should_fault_rx(packet)))
  return RHF_RCV_CONTINUE;

 if (unlikely(rhf_err_flags(packet->rhf))) {
  struct hfi1_ctxtdata *rcd = packet->rcd;

  if (hfi1_handle_kdeth_eflags(rcd, rcd->ppd, packet))
   return RHF_RCV_CONTINUE;
 }

 hfi1_kdeth_expected_rcv(packet);
 return RHF_RCV_CONTINUE;
}
