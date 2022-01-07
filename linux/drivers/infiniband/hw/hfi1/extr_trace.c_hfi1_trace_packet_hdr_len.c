
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfi1_packet {scalar_t__ etype; int hdr; } ;


 scalar_t__ RHF_RCV_TYPE_BYPASS ;
 int __get_16b_hdr_len (int ) ;
 int __get_ib_hdr_len (int ) ;

u8 hfi1_trace_packet_hdr_len(struct hfi1_packet *packet)
{
 if (packet->etype != RHF_RCV_TYPE_BYPASS)
  return __get_ib_hdr_len(packet->hdr);
 else
  return __get_16b_hdr_len(packet->hdr);
}
