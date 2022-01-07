
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxad_phy {int dummy; } ;
struct pxad_chan {struct pxad_phy* phy; } ;


 int DCSR ;
 int PXA_DCSR_RUN ;
 int phy_readl_relaxed (struct pxad_phy*,int ) ;

__attribute__((used)) static bool is_chan_running(struct pxad_chan *chan)
{
 u32 dcsr;
 struct pxad_phy *phy = chan->phy;

 if (!phy)
  return 0;
 dcsr = phy_readl_relaxed(phy, DCSR);
 return dcsr & PXA_DCSR_RUN;
}
