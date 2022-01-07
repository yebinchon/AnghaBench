
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_packet {int rhf; struct hfi1_ctxtdata* rcd; } ;
struct hfi1_ctxtdata {int ppd; } ;


 int rcv_hdrerr (struct hfi1_ctxtdata*,int ,struct hfi1_packet*) ;
 scalar_t__ rhf_err_flags (int ) ;
 int show_eflags_errs (struct hfi1_packet*) ;

void handle_eflags(struct hfi1_packet *packet)
{
 struct hfi1_ctxtdata *rcd = packet->rcd;

 rcv_hdrerr(rcd, rcd->ppd, packet);
 if (rhf_err_flags(packet->rhf))
  show_eflags_errs(packet);
}
