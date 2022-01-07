
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_packet {scalar_t__ etype; int ohdr; int hdr; } ;


 scalar_t__ RHF_RCV_TYPE_BYPASS ;
 int hfi1_16B_get_becn (int ) ;
 int hfi1_16B_get_fecn (int ) ;
 int ib_bth_get_becn (int ) ;
 int ib_bth_get_fecn (int ) ;

__attribute__((used)) static inline bool hfi1_may_ecn(struct hfi1_packet *pkt)
{
 bool fecn, becn;

 if (pkt->etype == RHF_RCV_TYPE_BYPASS) {
  fecn = hfi1_16B_get_fecn(pkt->hdr);
  becn = hfi1_16B_get_becn(pkt->hdr);
 } else {
  fecn = ib_bth_get_fecn(pkt->ohdr);
  becn = ib_bth_get_becn(pkt->ohdr);
 }
 return fecn || becn;
}
