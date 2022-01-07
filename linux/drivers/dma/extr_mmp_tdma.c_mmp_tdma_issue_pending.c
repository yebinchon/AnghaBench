
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;


 int mmp_tdma_enable_chan (struct mmp_tdma_chan*) ;
 struct mmp_tdma_chan* to_mmp_tdma_chan (struct dma_chan*) ;

__attribute__((used)) static void mmp_tdma_issue_pending(struct dma_chan *chan)
{
 struct mmp_tdma_chan *tdmac = to_mmp_tdma_chan(chan);

 mmp_tdma_enable_chan(tdmac);
}
