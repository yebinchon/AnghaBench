
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cqdma_vdesc {int src; int dest; int len; int ch; } ;
struct mtk_cqdma_pchan {int dummy; } ;


 int MTK_CQDMA_ADDR2_SHFIT ;
 int MTK_CQDMA_ADDR_LIMIT ;
 int MTK_CQDMA_DST ;
 int MTK_CQDMA_DST2 ;
 int MTK_CQDMA_EN ;
 int MTK_CQDMA_EN_BIT ;
 int MTK_CQDMA_LEN1 ;
 int MTK_CQDMA_RESET ;
 int MTK_CQDMA_SRC ;
 int MTK_CQDMA_SRC2 ;
 int MTK_CQDMA_WARM_RST_BIT ;
 int cqdma2dev (int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ mtk_cqdma_poll_engine_done (struct mtk_cqdma_pchan*,int) ;
 int mtk_dma_set (struct mtk_cqdma_pchan*,int ,int) ;
 int to_cqdma_dev (int ) ;

__attribute__((used)) static void mtk_cqdma_start(struct mtk_cqdma_pchan *pc,
       struct mtk_cqdma_vdesc *cvd)
{

 if (mtk_cqdma_poll_engine_done(pc, 1) < 0)
  dev_err(cqdma2dev(to_cqdma_dev(cvd->ch)), "cqdma wait transaction timeout\n");


 mtk_dma_set(pc, MTK_CQDMA_RESET, MTK_CQDMA_WARM_RST_BIT);
 if (mtk_cqdma_poll_engine_done(pc, 1) < 0)
  dev_err(cqdma2dev(to_cqdma_dev(cvd->ch)), "cqdma warm reset timeout\n");


 mtk_dma_set(pc, MTK_CQDMA_SRC, cvd->src & MTK_CQDMA_ADDR_LIMIT);



 mtk_dma_set(pc, MTK_CQDMA_SRC2, 0);



 mtk_dma_set(pc, MTK_CQDMA_DST, cvd->dest & MTK_CQDMA_ADDR_LIMIT);



 mtk_dma_set(pc, MTK_CQDMA_DST2, 0);



 mtk_dma_set(pc, MTK_CQDMA_LEN1, cvd->len);


 mtk_dma_set(pc, MTK_CQDMA_EN, MTK_CQDMA_EN_BIT);
}
