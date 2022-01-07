
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmbus_channel_message_header {size_t msgtype; } ;
struct TYPE_5__ {scalar_t__ payload; } ;
struct TYPE_4__ {int payload_size; } ;
struct hv_message {TYPE_2__ u; TYPE_1__ header; } ;
struct TYPE_6__ {int (* message_handler ) (struct vmbus_channel_message_header*) ;} ;


 size_t CHANNELMSG_COUNT ;
 int DUMP_PREFIX_NONE ;
 TYPE_3__* channel_message_table ;
 int pr_err (char*,size_t,...) ;
 int print_hex_dump_bytes (char*,int ,unsigned char*,int) ;
 int stub1 (struct vmbus_channel_message_header*) ;
 int trace_vmbus_on_message (struct vmbus_channel_message_header*) ;

void vmbus_onmessage(void *context)
{
 struct hv_message *msg = context;
 struct vmbus_channel_message_header *hdr;
 int size;

 hdr = (struct vmbus_channel_message_header *)msg->u.payload;
 size = msg->header.payload_size;

 trace_vmbus_on_message(hdr);

 if (hdr->msgtype >= CHANNELMSG_COUNT) {
  pr_err("Received invalid channel message type %d size %d\n",
      hdr->msgtype, size);
  print_hex_dump_bytes("", DUMP_PREFIX_NONE,
         (unsigned char *)msg->u.payload, size);
  return;
 }

 if (channel_message_table[hdr->msgtype].message_handler)
  channel_message_table[hdr->msgtype].message_handler(hdr);
 else
  pr_err("Unhandled channel message type %d\n", hdr->msgtype);
}
