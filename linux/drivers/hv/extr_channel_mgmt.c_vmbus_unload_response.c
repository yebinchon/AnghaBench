
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel_message_header {int dummy; } ;
struct TYPE_2__ {int unload_event; } ;


 int complete (int *) ;
 TYPE_1__ vmbus_connection ;

__attribute__((used)) static void vmbus_unload_response(struct vmbus_channel_message_header *hdr)
{




 complete(&vmbus_connection.unload_event);
}
