
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct pdc_state {scalar_t__ nrxpost; size_t rxout; size_t rx_msg_start; int nrxd; int pdc_resp_hdr_len; struct pdc_rx_ctx* rx_ctx; int txout; int tx_msg_start; int rx_buf_pool; int rxnobuf; int rxin; } ;
struct pdc_rx_ctx {int rxin_numd; int resp_hdr_daddr; void* resp_hdr; struct scatterlist* dst_sg; void* rxp_ctx; } ;
typedef int dma_addr_t ;


 scalar_t__ D64_CTRL1_EOT ;
 scalar_t__ D64_CTRL1_SOF ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_ATOMIC ;
 scalar_t__ NRXDACTIVE (int ,size_t,scalar_t__) ;
 int PDC_SUCCESS ;
 void* dma_pool_zalloc (int ,int ,int *) ;
 int pdc_build_rxd (struct pdc_state*,int ,int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pdc_rx_list_init(struct pdc_state *pdcs, struct scatterlist *dst_sg,
       void *ctx)
{
 u32 flags = 0;
 u32 rx_avail;
 u32 rx_pkt_cnt = 1;
 dma_addr_t daddr;
 void *vaddr;
 struct pdc_rx_ctx *rx_ctx;

 rx_avail = pdcs->nrxpost - NRXDACTIVE(pdcs->rxin, pdcs->rxout,
           pdcs->nrxpost);
 if (unlikely(rx_pkt_cnt > rx_avail)) {
  pdcs->rxnobuf++;
  return -ENOSPC;
 }


 vaddr = dma_pool_zalloc(pdcs->rx_buf_pool, GFP_ATOMIC, &daddr);
 if (unlikely(!vaddr))
  return -ENOMEM;






 pdcs->rx_msg_start = pdcs->rxout;
 pdcs->tx_msg_start = pdcs->txout;


 flags = D64_CTRL1_SOF;
 pdcs->rx_ctx[pdcs->rx_msg_start].rxin_numd = 1;

 if (unlikely(pdcs->rxout == (pdcs->nrxd - 1)))
  flags |= D64_CTRL1_EOT;

 rx_ctx = &pdcs->rx_ctx[pdcs->rxout];
 rx_ctx->rxp_ctx = ctx;
 rx_ctx->dst_sg = dst_sg;
 rx_ctx->resp_hdr = vaddr;
 rx_ctx->resp_hdr_daddr = daddr;
 pdc_build_rxd(pdcs, daddr, pdcs->pdc_resp_hdr_len, flags);
 return PDC_SUCCESS;
}
