
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idma64 {int dummy; } ;


 int CFG ;
 int IDMA64_CFG_DMA_EN ;
 int dma_writel (struct idma64*,int ,int ) ;

__attribute__((used)) static void idma64_on(struct idma64 *idma64)
{
 dma_writel(idma64, CFG, IDMA64_CFG_DMA_EN);
}
