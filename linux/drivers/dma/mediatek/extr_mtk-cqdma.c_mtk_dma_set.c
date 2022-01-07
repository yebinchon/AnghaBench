
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_cqdma_pchan {int dummy; } ;


 int mtk_dma_rmw (struct mtk_cqdma_pchan*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dma_set(struct mtk_cqdma_pchan *pc, u32 reg, u32 val)
{
 mtk_dma_rmw(pc, reg, 0, val);
}
