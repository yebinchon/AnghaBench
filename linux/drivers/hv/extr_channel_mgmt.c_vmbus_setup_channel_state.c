
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vmbus_channel_offer_channel {scalar_t__ is_dedicated_interrupt; scalar_t__ monitorid; int connection_id; } ;
struct vmbus_channel {int is_dedicated_interrupt; int monitor_grp; int monitor_bit; int offermsg; int sig_event; } ;


 scalar_t__ VERSION_WS2008 ;
 int VMBUS_EVENT_CONNECTION_ID ;
 int memcpy (int *,struct vmbus_channel_offer_channel*,int) ;
 scalar_t__ vmbus_proto_version ;

__attribute__((used)) static void vmbus_setup_channel_state(struct vmbus_channel *channel,
          struct vmbus_channel_offer_channel *offer)
{



 channel->sig_event = VMBUS_EVENT_CONNECTION_ID;

 if (vmbus_proto_version != VERSION_WS2008) {
  channel->is_dedicated_interrupt =
    (offer->is_dedicated_interrupt != 0);
  channel->sig_event = offer->connection_id;
 }

 memcpy(&channel->offermsg, offer,
        sizeof(struct vmbus_channel_offer_channel));
 channel->monitor_grp = (u8)offer->monitorid / 32;
 channel->monitor_bit = (u8)offer->monitorid % 32;
}
