
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mhu_link {scalar_t__ tx_reg; } ;
struct mbox_chan {struct mhu_link* con_priv; } ;


 scalar_t__ INTR_SET_OFS ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int mhu_send_data(struct mbox_chan *chan, void *data)
{
 struct mhu_link *mlink = chan->con_priv;
 u32 *arg = data;

 writel_relaxed(*arg, mlink->tx_reg + INTR_SET_OFS);

 return 0;
}
