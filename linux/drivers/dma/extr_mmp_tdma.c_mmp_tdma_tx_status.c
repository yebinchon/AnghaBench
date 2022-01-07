
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_chan {int status; scalar_t__ pos; scalar_t__ buf_len; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int cookie; int completed_cookie; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int dma_set_tx_state (struct dma_tx_state*,int ,int ,scalar_t__) ;
 scalar_t__ mmp_tdma_get_pos (struct mmp_tdma_chan*) ;
 struct mmp_tdma_chan* to_mmp_tdma_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status mmp_tdma_tx_status(struct dma_chan *chan,
   dma_cookie_t cookie, struct dma_tx_state *txstate)
{
 struct mmp_tdma_chan *tdmac = to_mmp_tdma_chan(chan);

 tdmac->pos = mmp_tdma_get_pos(tdmac);
 dma_set_tx_state(txstate, chan->completed_cookie, chan->cookie,
    tdmac->buf_len - tdmac->pos);

 return tdmac->status;
}
