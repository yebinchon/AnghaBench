
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxdma_engine {int dummy; } ;
struct imxdma_channel {int hw_chaining; struct imxdma_engine* imxdma; } ;


 scalar_t__ is_imx27_dma (struct imxdma_engine*) ;

__attribute__((used)) static int imxdma_hw_chain(struct imxdma_channel *imxdmac)
{
 struct imxdma_engine *imxdma = imxdmac->imxdma;

 if (is_imx27_dma(imxdma))
  return imxdmac->hw_chaining;
 else
  return 0;
}
