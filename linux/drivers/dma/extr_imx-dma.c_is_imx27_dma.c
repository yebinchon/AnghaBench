
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxdma_engine {scalar_t__ devtype; } ;


 scalar_t__ IMX27_DMA ;

__attribute__((used)) static inline int is_imx27_dma(struct imxdma_engine *imxdma)
{
 return imxdma->devtype == IMX27_DMA;
}
