
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdma_device {int clk; } ;


 int MTK_HSDMA_GLO ;
 int MTK_HSDMA_GLO_DEFAULT ;
 int MTK_HSDMA_INT_ENABLE ;
 int clk_prepare_enable (int ) ;
 int hsdma2dev (struct mtk_hsdma_device*) ;
 int mtk_dma_write (struct mtk_hsdma_device*,int ,int ) ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int mtk_hsdma_hw_init(struct mtk_hsdma_device *hsdma)
{
 int err;

 pm_runtime_enable(hsdma2dev(hsdma));
 pm_runtime_get_sync(hsdma2dev(hsdma));

 err = clk_prepare_enable(hsdma->clk);
 if (err)
  return err;

 mtk_dma_write(hsdma, MTK_HSDMA_INT_ENABLE, 0);
 mtk_dma_write(hsdma, MTK_HSDMA_GLO, MTK_HSDMA_GLO_DEFAULT);

 return 0;
}
