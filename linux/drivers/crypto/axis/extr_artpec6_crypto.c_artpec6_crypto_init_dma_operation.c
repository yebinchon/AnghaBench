
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_crypto_req_common {struct artpec6_crypto_dma_descriptors* dma; } ;
struct artpec6_crypto_dma_descriptors {int bounce_buffers; scalar_t__ map_count; scalar_t__ in_cnt; scalar_t__ out_cnt; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void
artpec6_crypto_init_dma_operation(struct artpec6_crypto_req_common *common)
{
 struct artpec6_crypto_dma_descriptors *dma = common->dma;

 dma->out_cnt = 0;
 dma->in_cnt = 0;
 dma->map_count = 0;
 INIT_LIST_HEAD(&dma->bounce_buffers);
}
