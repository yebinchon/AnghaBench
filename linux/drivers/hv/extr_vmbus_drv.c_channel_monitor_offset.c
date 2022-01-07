
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ monitorid; } ;
struct vmbus_channel {TYPE_1__ offermsg; } ;



__attribute__((used)) static u8 channel_monitor_offset(const struct vmbus_channel *channel)
{
 return (u8)channel->offermsg.monitorid % 32;
}
