
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_dma_dev {int ashb_clk; int clk; } ;


 int IS_ERR (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int sprd_dma_enable(struct sprd_dma_dev *sdev)
{
 int ret;

 ret = clk_prepare_enable(sdev->clk);
 if (ret)
  return ret;





 if (!IS_ERR(sdev->ashb_clk))
  ret = clk_prepare_enable(sdev->ashb_clk);

 return ret;
}
