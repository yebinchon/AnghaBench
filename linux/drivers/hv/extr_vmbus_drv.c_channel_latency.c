
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct vmbus_channel {int dummy; } ;
struct hv_monitor_page {int ** latency; } ;


 size_t channel_monitor_group (struct vmbus_channel const*) ;
 size_t channel_monitor_offset (struct vmbus_channel const*) ;

__attribute__((used)) static u32 channel_latency(const struct vmbus_channel *channel,
      const struct hv_monitor_page *monitor_page)
{
 u8 monitor_group = channel_monitor_group(channel);
 u8 monitor_offset = channel_monitor_offset(channel);

 return monitor_page->latency[monitor_group][monitor_offset];
}
