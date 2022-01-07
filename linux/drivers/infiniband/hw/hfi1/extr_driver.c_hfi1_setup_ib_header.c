
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfi1_packet {int hlen; struct hfi1_ib_message_header* hdr; scalar_t__ rhf_addr; int rcd; } ;
struct hfi1_ib_message_header {int dummy; } ;


 scalar_t__ hfi1_get_msgheader (int ,scalar_t__) ;

__attribute__((used)) static inline void hfi1_setup_ib_header(struct hfi1_packet *packet)
{
 packet->hdr = (struct hfi1_ib_message_header *)
   hfi1_get_msgheader(packet->rcd,
        packet->rhf_addr);
 packet->hlen = (u8 *)packet->rhf_addr - (u8 *)packet->hdr;
}
