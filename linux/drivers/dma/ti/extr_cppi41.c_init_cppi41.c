
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int submit; } ;
struct cppi41_dd {scalar_t__ ctrl_mem; TYPE_1__ td_queue; scalar_t__ qmgr_mem; int scratch_phys; int qmgr_scratch; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ DMA_TDFDQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ QMGR_LRAM0_BASE ;
 scalar_t__ QMGR_LRAM1_BASE ;
 scalar_t__ QMGR_LRAM_SIZE ;
 int QMGR_SCRATCH_SIZE ;
 int TOTAL_DESCS_NUM ;
 int cppi_writel (int ,scalar_t__) ;
 int deinit_cppi41 (struct device*,struct cppi41_dd*) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int init_descs (struct device*,struct cppi41_dd*) ;
 int init_sched (struct cppi41_dd*) ;

__attribute__((used)) static int init_cppi41(struct device *dev, struct cppi41_dd *cdd)
{
 int ret;

 BUILD_BUG_ON(QMGR_SCRATCH_SIZE > ((1 << 14) - 1));
 cdd->qmgr_scratch = dma_alloc_coherent(dev, QMGR_SCRATCH_SIZE,
   &cdd->scratch_phys, GFP_KERNEL);
 if (!cdd->qmgr_scratch)
  return -ENOMEM;

 cppi_writel(cdd->scratch_phys, cdd->qmgr_mem + QMGR_LRAM0_BASE);
 cppi_writel(TOTAL_DESCS_NUM, cdd->qmgr_mem + QMGR_LRAM_SIZE);
 cppi_writel(0, cdd->qmgr_mem + QMGR_LRAM1_BASE);

 ret = init_descs(dev, cdd);
 if (ret)
  goto err_td;

 cppi_writel(cdd->td_queue.submit, cdd->ctrl_mem + DMA_TDFDQ);
 init_sched(cdd);

 return 0;
err_td:
 deinit_cppi41(dev, cdd);
 return ret;
}
