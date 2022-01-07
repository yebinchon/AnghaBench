
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_edma_engine {int * muxclk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void fsl_disable_clocks(struct fsl_edma_engine *fsl_edma, int nr_clocks)
{
 int i;

 for (i = 0; i < nr_clocks; i++)
  clk_disable_unprepare(fsl_edma->muxclk[i]);
}
