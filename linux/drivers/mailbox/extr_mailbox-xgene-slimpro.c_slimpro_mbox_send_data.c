
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slimpro_mbox_chan {int dummy; } ;
struct mbox_chan {struct slimpro_mbox_chan* con_priv; } ;


 int mb_chan_send_msg (struct slimpro_mbox_chan*,void*) ;

__attribute__((used)) static int slimpro_mbox_send_data(struct mbox_chan *chan, void *msg)
{
 struct slimpro_mbox_chan *mb_chan = chan->con_priv;

 mb_chan_send_msg(mb_chan, msg);
 return 0;
}
