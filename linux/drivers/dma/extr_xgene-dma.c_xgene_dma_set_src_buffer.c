
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t dma_addr_t ;
typedef int __le64 ;


 size_t XGENE_DMA_MAX_BYTE_CNT ;
 int cpu_to_le64 (size_t) ;
 size_t xgene_dma_encode_len (size_t) ;

__attribute__((used)) static void xgene_dma_set_src_buffer(__le64 *ext8, size_t *len,
         dma_addr_t *paddr)
{
 size_t nbytes = (*len < XGENE_DMA_MAX_BYTE_CNT) ?
   *len : XGENE_DMA_MAX_BYTE_CNT;

 *ext8 |= cpu_to_le64(*paddr);
 *ext8 |= cpu_to_le64(xgene_dma_encode_len(nbytes));
 *len -= nbytes;
 *paddr += nbytes;
}
