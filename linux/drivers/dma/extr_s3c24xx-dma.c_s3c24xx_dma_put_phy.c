
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c24xx_dma_phy {int * serving; int clk; struct s3c24xx_dma_engine* host; } ;
struct s3c24xx_dma_engine {TYPE_1__* sdata; } ;
struct TYPE_2__ {scalar_t__ has_clocks; } ;


 int clk_disable (int ) ;

__attribute__((used)) static inline void s3c24xx_dma_put_phy(struct s3c24xx_dma_phy *phy)
{
 struct s3c24xx_dma_engine *s3cdma = phy->host;

 if (s3cdma->sdata->has_clocks)
  clk_disable(phy->clk);

 phy->serving = ((void*)0);
}
