
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbox_chan {TYPE_2__* mbox; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* peek_data ) (struct mbox_chan*) ;} ;


 int stub1 (struct mbox_chan*) ;

bool mbox_client_peek_data(struct mbox_chan *chan)
{
 if (chan->mbox->ops->peek_data)
  return chan->mbox->ops->peek_data(chan);

 return 0;
}
