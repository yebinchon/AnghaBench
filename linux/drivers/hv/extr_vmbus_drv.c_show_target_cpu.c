
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int target_cpu; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_target_cpu(struct vmbus_channel *channel, char *buf)
{
 return sprintf(buf, "%u\n", channel->target_cpu);
}
