
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {struct a37xx_mbox* con_priv; } ;
struct armada_37xx_rwtm_rx_msg {void** status; void* retval; } ;
struct a37xx_mbox {scalar_t__ base; } ;


 scalar_t__ RWTM_MBOX_RETURN_STATUS ;
 scalar_t__ RWTM_MBOX_STATUS (int) ;
 int mbox_chan_received_data (struct mbox_chan*,struct armada_37xx_rwtm_rx_msg*) ;
 void* readl (scalar_t__) ;

__attribute__((used)) static void a37xx_mbox_receive(struct mbox_chan *chan)
{
 struct a37xx_mbox *mbox = chan->con_priv;
 struct armada_37xx_rwtm_rx_msg rx_msg;
 int i;

 rx_msg.retval = readl(mbox->base + RWTM_MBOX_RETURN_STATUS);
 for (i = 0; i < 16; ++i)
  rx_msg.status[i] = readl(mbox->base + RWTM_MBOX_STATUS(i));

 mbox_chan_received_data(chan, &rx_msg);
}
