
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cqdma_pchan {int dummy; } ;


 int MTK_CQDMA_HARD_RST_BIT ;
 int MTK_CQDMA_RESET ;
 int mtk_cqdma_poll_engine_done (struct mtk_cqdma_pchan*,int) ;
 int mtk_dma_clr (struct mtk_cqdma_pchan*,int ,int ) ;
 int mtk_dma_set (struct mtk_cqdma_pchan*,int ,int ) ;

__attribute__((used)) static int mtk_cqdma_hard_reset(struct mtk_cqdma_pchan *pc)
{
 mtk_dma_set(pc, MTK_CQDMA_RESET, MTK_CQDMA_HARD_RST_BIT);
 mtk_dma_clr(pc, MTK_CQDMA_RESET, MTK_CQDMA_HARD_RST_BIT);

 return mtk_cqdma_poll_engine_done(pc, 1);
}
