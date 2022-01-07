
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_cqdma_pchan {int dummy; } ;


 int mtk_dma_read (struct mtk_cqdma_pchan*,int ) ;
 int mtk_dma_write (struct mtk_cqdma_pchan*,int ,int ) ;

__attribute__((used)) static void mtk_dma_rmw(struct mtk_cqdma_pchan *pc, u32 reg,
   u32 mask, u32 set)
{
 u32 val;

 val = mtk_dma_read(pc, reg);
 val &= ~mask;
 val |= set;
 mtk_dma_write(pc, reg, val);
}
