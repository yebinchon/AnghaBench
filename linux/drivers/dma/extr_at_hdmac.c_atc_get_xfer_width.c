
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t dma_addr_t ;



__attribute__((used)) static inline unsigned int atc_get_xfer_width(dma_addr_t src, dma_addr_t dst,
      size_t len)
{
 unsigned int width;

 if (!((src | dst | len) & 3))
  width = 2;
 else if (!((src | dst | len) & 1))
  width = 1;
 else
  width = 0;

 return width;
}
