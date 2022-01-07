
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation_msg_hdr {scalar_t__* pad; } ;



__attribute__((used)) static void gb_message_cport_clear(struct gb_operation_msg_hdr *header)
{
 header->pad[0] = 0;
}
