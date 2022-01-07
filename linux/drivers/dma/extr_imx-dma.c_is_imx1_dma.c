
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxdma_engine {scalar_t__ devtype; } ;


 scalar_t__ IMX1_DMA ;

__attribute__((used)) static inline int is_imx1_dma(struct imxdma_engine *imxdma)
{
 return imxdma->devtype == IMX1_DMA;
}
