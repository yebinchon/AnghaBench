
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sub_channel_index; } ;
struct TYPE_4__ {TYPE_1__ offer; } ;
struct vmbus_channel {TYPE_2__ offermsg; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t subchannel_id_show(struct vmbus_channel *channel,
      char *buf)
{
 return sprintf(buf, "%u\n",
         channel->offermsg.offer.sub_channel_index);
}
