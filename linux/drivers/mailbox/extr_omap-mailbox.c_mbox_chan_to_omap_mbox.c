
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int dummy; } ;
struct mbox_chan {scalar_t__ con_priv; } ;



__attribute__((used)) static struct omap_mbox *mbox_chan_to_omap_mbox(struct mbox_chan *chan)
{
 if (!chan || !chan->con_priv)
  return ((void*)0);

 return (struct omap_mbox *)chan->con_priv;
}
