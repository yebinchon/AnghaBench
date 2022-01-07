
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_dma_chip {int core_clk; int cfgr_clk; } ;


 int axi_dma_enable (struct axi_dma_chip*) ;
 int axi_dma_irq_enable (struct axi_dma_chip*) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int axi_dma_resume(struct axi_dma_chip *chip)
{
 int ret;

 ret = clk_prepare_enable(chip->cfgr_clk);
 if (ret < 0)
  return ret;

 ret = clk_prepare_enable(chip->core_clk);
 if (ret < 0)
  return ret;

 axi_dma_enable(chip);
 axi_dma_irq_enable(chip);

 return 0;
}
