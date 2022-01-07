
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int sig_events; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t channel_events_show(struct vmbus_channel *channel, char *buf)
{
 return sprintf(buf, "%llu\n", channel->sig_events);
}
