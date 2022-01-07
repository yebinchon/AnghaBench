
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_operation_msg_hdr {int * pad; } ;


 int gb_message_cport_clear (struct gb_operation_msg_hdr*) ;

__attribute__((used)) static u16 gb_message_cport_unpack(struct gb_operation_msg_hdr *header)
{
 u16 cport_id = header->pad[0];

 gb_message_cport_clear(header);

 return cport_id;
}
