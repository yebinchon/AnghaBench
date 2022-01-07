
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_dma_dev {int ashb_clk; int clk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void sprd_dma_disable(struct sprd_dma_dev *sdev)
{
 clk_disable_unprepare(sdev->clk);




 if (!IS_ERR(sdev->ashb_clk))
  clk_disable_unprepare(sdev->ashb_clk);
}
