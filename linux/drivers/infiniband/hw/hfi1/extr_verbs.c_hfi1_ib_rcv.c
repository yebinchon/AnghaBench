
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_packet {int dlid; int rhf; struct hfi1_ctxtdata* rcd; } ;
struct hfi1_ctxtdata {int dd; } ;


 int hfi1_check_mcast (int ) ;
 int hfi1_handle_packet (struct hfi1_packet*,int ) ;
 int rhf_dc_info (int ) ;
 int trace_input_ibhdr (int ,struct hfi1_packet*,int) ;

void hfi1_ib_rcv(struct hfi1_packet *packet)
{
 struct hfi1_ctxtdata *rcd = packet->rcd;

 trace_input_ibhdr(rcd->dd, packet, !!(rhf_dc_info(packet->rhf)));
 hfi1_handle_packet(packet, hfi1_check_mcast(packet->dlid));
}
