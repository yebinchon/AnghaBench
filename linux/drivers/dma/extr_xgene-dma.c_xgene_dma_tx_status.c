
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;

__attribute__((used)) static enum dma_status xgene_dma_tx_status(struct dma_chan *dchan,
        dma_cookie_t cookie,
        struct dma_tx_state *txstate)
{
 return dma_cookie_status(dchan, cookie, txstate);
}
