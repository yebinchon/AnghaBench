
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axi_dma_chip {int cfgr_clk; int core_clk; } ;


 int axi_dma_disable (struct axi_dma_chip*) ;
 int axi_dma_irq_disable (struct axi_dma_chip*) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static int axi_dma_suspend(struct axi_dma_chip *chip)
{
 axi_dma_irq_disable(chip);
 axi_dma_disable(chip);

 clk_disable_unprepare(chip->core_clk);
 clk_disable_unprepare(chip->cfgr_clk);

 return 0;
}
