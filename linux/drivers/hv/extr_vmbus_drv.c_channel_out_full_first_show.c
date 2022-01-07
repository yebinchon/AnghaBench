
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {scalar_t__ out_full_first; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t channel_out_full_first_show(struct vmbus_channel *channel,
        char *buf)
{
 return sprintf(buf, "%llu\n",
         (unsigned long long)channel->out_full_first);
}
