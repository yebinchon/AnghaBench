
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_crypto_req_common {struct artpec6_crypto_dma_descriptors* dma; } ;
struct artpec6_crypto_dma_descriptors {int in_cnt; int out_cnt; int stat_dma_addr; scalar_t__* stat; int out_dma_addr; scalar_t__* out; int in_dma_addr; scalar_t__* in; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 int artpec6_crypto_dma_map_single (struct artpec6_crypto_req_common*,scalar_t__*,int,int ,int *) ;

__attribute__((used)) static int
artpec6_crypto_dma_map_descs(struct artpec6_crypto_req_common *common)
{
 struct artpec6_crypto_dma_descriptors *dma = common->dma;
 int ret;

 ret = artpec6_crypto_dma_map_single(common, dma->in,
    sizeof(dma->in[0]) * dma->in_cnt,
    DMA_TO_DEVICE, &dma->in_dma_addr);
 if (ret)
  return ret;

 ret = artpec6_crypto_dma_map_single(common, dma->out,
    sizeof(dma->out[0]) * dma->out_cnt,
    DMA_TO_DEVICE, &dma->out_dma_addr);
 if (ret)
  return ret;


 dma->stat[dma->in_cnt - 1] = 0;





 return artpec6_crypto_dma_map_single(common,
    dma->stat,
    sizeof(dma->stat[0]) * dma->in_cnt,
    DMA_BIDIRECTIONAL,
    &dma->stat_dma_addr);
}
