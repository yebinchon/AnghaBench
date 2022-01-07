
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_cqdma_pchan {scalar_t__ base; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mtk_dma_write(struct mtk_cqdma_pchan *pc, u32 reg, u32 val)
{
 writel_relaxed(val, pc->base + reg);
}
