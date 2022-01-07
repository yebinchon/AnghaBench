
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_operation_msg_hdr {int * pad; } ;



__attribute__((used)) static void
gb_message_cport_pack(struct gb_operation_msg_hdr *header, u16 cport_id)
{
 header->pad[0] = cport_id;
}
