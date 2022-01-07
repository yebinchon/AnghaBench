
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxdma_engine {unsigned int base; } ;


 int __raw_writel (unsigned int,unsigned int) ;

__attribute__((used)) static void imx_dmav1_writel(struct imxdma_engine *imxdma, unsigned val,
        unsigned offset)
{
 __raw_writel(val, imxdma->base + offset);
}
