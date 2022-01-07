
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct hfi1_packet {int rhf; void** ebuf; int tlen; int hdr; TYPE_1__* rcd; } ;
struct TYPE_4__ {int status_and_code; void* packet_flit2; void* packet_flit1; } ;
struct hfi1_devdata {TYPE_2__ err_info_rcvport; int sw_rcv_bypass_packet_errors; } ;
typedef int flits ;
struct TYPE_3__ {struct hfi1_devdata* dd; } ;


 int BAD_L2_ERR ;
 int OPA_EI_STATUS_SMASK ;
 int RHF_LEN_ERR ;
 int RHF_RCV_CONTINUE ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int handle_eflags (struct hfi1_packet*) ;
 int hfi1_16B_get_l2 (int ) ;
 int hfi1_16B_rcv (struct hfi1_packet*) ;
 scalar_t__ hfi1_is_vnic_packet (struct hfi1_packet*) ;
 scalar_t__ hfi1_setup_bypass_packet (struct hfi1_packet*) ;
 int hfi1_vnic_bypass_rcv (struct hfi1_packet*) ;
 int incr_cntr64 (int *) ;
 int rhf_err_flags (int) ;
 int trace_hfi1_rcvhdr (struct hfi1_packet*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int process_receive_bypass(struct hfi1_packet *packet)
{
 struct hfi1_devdata *dd = packet->rcd->dd;

 if (hfi1_is_vnic_packet(packet)) {
  hfi1_vnic_bypass_rcv(packet);
  return RHF_RCV_CONTINUE;
 }

 if (hfi1_setup_bypass_packet(packet))
  return RHF_RCV_CONTINUE;

 trace_hfi1_rcvhdr(packet);

 if (unlikely(rhf_err_flags(packet->rhf))) {
  handle_eflags(packet);
  return RHF_RCV_CONTINUE;
 }

 if (hfi1_16B_get_l2(packet->hdr) == 0x2) {
  hfi1_16B_rcv(packet);
 } else {
  dd_dev_err(dd,
      "Bypass packets other than 16B are not supported in normal operation. Dropping\n");
  incr_cntr64(&dd->sw_rcv_bypass_packet_errors);
  if (!(dd->err_info_rcvport.status_and_code &
        OPA_EI_STATUS_SMASK)) {
   u64 *flits = packet->ebuf;

   if (flits && !(packet->rhf & RHF_LEN_ERR)) {
    dd->err_info_rcvport.packet_flit1 = flits[0];
    dd->err_info_rcvport.packet_flit2 =
     packet->tlen > sizeof(flits[0]) ?
     flits[1] : 0;
   }
   dd->err_info_rcvport.status_and_code |=
    (OPA_EI_STATUS_SMASK | BAD_L2_ERR);
  }
 }
 return RHF_RCV_CONTINUE;
}
