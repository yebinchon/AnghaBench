
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct dw_dma_chan {size_t block_size; } ;



__attribute__((used)) static u32 idma32_bytes2block(struct dw_dma_chan *dwc,
         size_t bytes, unsigned int width, size_t *len)
{
 u32 block;

 if (bytes > dwc->block_size) {
  block = dwc->block_size;
  *len = dwc->block_size;
 } else {
  block = bytes;
  *len = bytes;
 }

 return block;
}
