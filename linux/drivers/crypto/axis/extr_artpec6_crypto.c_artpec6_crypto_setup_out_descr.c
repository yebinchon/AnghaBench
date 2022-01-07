
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_crypto_req_common {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int artpec6_crypto_dma_map_single (struct artpec6_crypto_req_common*,void*,unsigned int,int ,int *) ;
 int artpec6_crypto_setup_out_descr_phys (struct artpec6_crypto_req_common*,int ,unsigned int,int) ;
 int artpec6_crypto_setup_out_descr_short (struct artpec6_crypto_req_common*,void*,unsigned int,int) ;

__attribute__((used)) static int
artpec6_crypto_setup_out_descr(struct artpec6_crypto_req_common *common,
          void *dst, unsigned int len, bool eop,
          bool use_short)
{
 if (use_short && len < 7) {
  return artpec6_crypto_setup_out_descr_short(common, dst, len,
           eop);
 } else {
  int ret;
  dma_addr_t dma_addr;

  ret = artpec6_crypto_dma_map_single(common, dst, len,
         DMA_TO_DEVICE,
         &dma_addr);
  if (ret)
   return ret;

  return artpec6_crypto_setup_out_descr_phys(common, dma_addr,
          len, eop);
 }
}
