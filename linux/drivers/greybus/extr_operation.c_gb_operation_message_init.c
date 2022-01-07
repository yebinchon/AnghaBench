
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct gb_operation_msg_hdr {scalar_t__ result; scalar_t__ type; scalar_t__ operation_id; int size; } ;
struct gb_message {size_t payload_size; struct gb_operation_msg_hdr* payload; struct gb_operation_msg_hdr* header; struct gb_operation_msg_hdr* buffer; } ;
struct gb_host_device {int dummy; } ;


 scalar_t__ GB_REQUEST_TYPE_INVALID ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void gb_operation_message_init(struct gb_host_device *hd,
          struct gb_message *message,
          u16 operation_id,
          size_t payload_size, u8 type)
{
 struct gb_operation_msg_hdr *header;

 header = message->buffer;

 message->header = header;
 message->payload = payload_size ? header + 1 : ((void*)0);
 message->payload_size = payload_size;






 if (type != GB_REQUEST_TYPE_INVALID) {
  u16 message_size = (u16)(sizeof(*header) + payload_size);
  header->size = cpu_to_le16(message_size);
  header->operation_id = 0;
  header->type = type;
  header->result = 0;
 }
}
