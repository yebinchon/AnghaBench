
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxdma_engine {unsigned int base; } ;


 int __raw_readl (unsigned int) ;

__attribute__((used)) static unsigned imx_dmav1_readl(struct imxdma_engine *imxdma, unsigned offset)
{
 return __raw_readl(imxdma->base + offset);
}
