
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cppi41_dd {int scratch_phys; int qmgr_scratch; scalar_t__ qmgr_mem; } ;


 scalar_t__ QMGR_LRAM0_BASE ;
 int QMGR_SCRATCH_SIZE ;
 int cppi_writel (int ,scalar_t__) ;
 int disable_sched (struct cppi41_dd*) ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int purge_descs (struct device*,struct cppi41_dd*) ;

__attribute__((used)) static void deinit_cppi41(struct device *dev, struct cppi41_dd *cdd)
{
 disable_sched(cdd);

 purge_descs(dev, cdd);

 cppi_writel(0, cdd->qmgr_mem + QMGR_LRAM0_BASE);
 cppi_writel(0, cdd->qmgr_mem + QMGR_LRAM0_BASE);
 dma_free_coherent(dev, QMGR_SCRATCH_SIZE, cdd->qmgr_scratch,
   cdd->scratch_phys);
}
