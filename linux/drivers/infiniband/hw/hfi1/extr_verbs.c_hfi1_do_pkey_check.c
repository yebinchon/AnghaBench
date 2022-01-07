
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_packet {scalar_t__ etype; int slid; TYPE_1__* qp; int sc; struct hfi1_16b_header* hdr; struct hfi1_ctxtdata* rcd; } ;
struct hfi1_ctxtdata {struct hfi1_pportdata* ppd; } ;
struct hfi1_16b_header {int dummy; } ;
struct TYPE_2__ {int s_pkey_index; } ;


 scalar_t__ RHF_RCV_TYPE_BYPASS ;
 int hfi1_16B_get_pkey (struct hfi1_16b_header*) ;
 int ingress_pkey_check (struct hfi1_pportdata*,int ,int ,int ,int ,int) ;

__attribute__((used)) static int hfi1_do_pkey_check(struct hfi1_packet *packet)
{
 struct hfi1_ctxtdata *rcd = packet->rcd;
 struct hfi1_pportdata *ppd = rcd->ppd;
 struct hfi1_16b_header *hdr = packet->hdr;
 u16 pkey;


 if (packet->etype != RHF_RCV_TYPE_BYPASS)
  return 0;


 pkey = hfi1_16B_get_pkey(hdr);
 return ingress_pkey_check(ppd, pkey, packet->sc,
      packet->qp->s_pkey_index,
      packet->slid, 1);
}
