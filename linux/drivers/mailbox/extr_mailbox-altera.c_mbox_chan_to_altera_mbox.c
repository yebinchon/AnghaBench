
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {scalar_t__ con_priv; } ;
struct altera_mbox {int dummy; } ;



__attribute__((used)) static struct altera_mbox *mbox_chan_to_altera_mbox(struct mbox_chan *chan)
{
 if (!chan || !chan->con_priv)
  return ((void*)0);

 return (struct altera_mbox *)chan->con_priv;
}
