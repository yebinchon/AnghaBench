
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdma_device {int clk; } ;


 int MTK_HSDMA_GLO ;
 int clk_disable_unprepare (int ) ;
 int hsdma2dev (struct mtk_hsdma_device*) ;
 int mtk_dma_write (struct mtk_hsdma_device*,int ,int ) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int mtk_hsdma_hw_deinit(struct mtk_hsdma_device *hsdma)
{
 mtk_dma_write(hsdma, MTK_HSDMA_GLO, 0);

 clk_disable_unprepare(hsdma->clk);

 pm_runtime_put_sync(hsdma2dev(hsdma));
 pm_runtime_disable(hsdma2dev(hsdma));

 return 0;
}
