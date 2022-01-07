
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 unsigned int EDMA_TCD_ATTR_DSIZE_16BIT ;
 unsigned int EDMA_TCD_ATTR_DSIZE_32BIT ;
 unsigned int EDMA_TCD_ATTR_DSIZE_64BIT ;
 unsigned int EDMA_TCD_ATTR_DSIZE_8BIT ;
 unsigned int EDMA_TCD_ATTR_SSIZE_16BIT ;
 unsigned int EDMA_TCD_ATTR_SSIZE_32BIT ;
 unsigned int EDMA_TCD_ATTR_SSIZE_64BIT ;
 unsigned int EDMA_TCD_ATTR_SSIZE_8BIT ;

__attribute__((used)) static unsigned int fsl_edma_get_tcd_attr(enum dma_slave_buswidth addr_width)
{
 switch (addr_width) {
 case 1:
  return EDMA_TCD_ATTR_SSIZE_8BIT | EDMA_TCD_ATTR_DSIZE_8BIT;
 case 2:
  return EDMA_TCD_ATTR_SSIZE_16BIT | EDMA_TCD_ATTR_DSIZE_16BIT;
 case 4:
  return EDMA_TCD_ATTR_SSIZE_32BIT | EDMA_TCD_ATTR_DSIZE_32BIT;
 case 8:
  return EDMA_TCD_ATTR_SSIZE_64BIT | EDMA_TCD_ATTR_DSIZE_64BIT;
 default:
  return EDMA_TCD_ATTR_SSIZE_32BIT | EDMA_TCD_ATTR_DSIZE_32BIT;
 }
}
