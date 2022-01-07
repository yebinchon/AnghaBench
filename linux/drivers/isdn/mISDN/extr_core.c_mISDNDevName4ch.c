
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mISDNchannel {TYPE_2__* st; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 char const* dev_name (int *) ;
 char const* msg_no_channel ;
 char const* msg_no_stack ;
 char const* msg_no_stackdev ;

const char *mISDNDevName4ch(struct mISDNchannel *ch)
{
 if (!ch)
  return msg_no_channel;
 if (!ch->st)
  return msg_no_stack;
 if (!ch->st->dev)
  return msg_no_stackdev;
 return dev_name(&ch->st->dev->dev);
}
