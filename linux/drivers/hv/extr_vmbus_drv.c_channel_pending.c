
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct vmbus_channel {int dummy; } ;
struct hv_monitor_page {TYPE_1__* trigger_group; } ;
struct TYPE_2__ {int pending; } ;


 size_t channel_monitor_group (struct vmbus_channel const*) ;

__attribute__((used)) static u32 channel_pending(const struct vmbus_channel *channel,
      const struct hv_monitor_page *monitor_page)
{
 u8 monitor_group = channel_monitor_group(channel);

 return monitor_page->trigger_group[monitor_group].pending;
}
