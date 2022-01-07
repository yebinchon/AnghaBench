
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_chan {int desc_arr_phys; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;


 int mmp_tdma_chan_set_desc (struct mmp_tdma_chan*,int ) ;
 struct mmp_tdma_chan* to_mmp_tdma_chan (int ) ;

__attribute__((used)) static dma_cookie_t mmp_tdma_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct mmp_tdma_chan *tdmac = to_mmp_tdma_chan(tx->chan);

 mmp_tdma_chan_set_desc(tdmac, tdmac->desc_arr_phys);

 return 0;
}
