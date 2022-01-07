
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pxad_chan {TYPE_1__* phy; } ;
struct TYPE_2__ {int idx; } ;


 int BIT (int ) ;
 int BUG_ON (int) ;
 int DALGN ;
 int phy_readl_relaxed (TYPE_1__*,int ) ;

__attribute__((used)) static bool is_running_chan_misaligned(struct pxad_chan *chan)
{
 u32 dalgn;

 BUG_ON(!chan->phy);
 dalgn = phy_readl_relaxed(chan->phy, DALGN);
 return dalgn & (BIT(chan->phy->idx));
}
