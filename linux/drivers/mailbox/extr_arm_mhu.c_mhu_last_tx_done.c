
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mhu_link {scalar_t__ tx_reg; } ;
struct mbox_chan {struct mhu_link* con_priv; } ;


 scalar_t__ INTR_STAT_OFS ;
 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static bool mhu_last_tx_done(struct mbox_chan *chan)
{
 struct mhu_link *mlink = chan->con_priv;
 u32 val = readl_relaxed(mlink->tx_reg + INTR_STAT_OFS);

 return (val == 0);
}
