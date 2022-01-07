
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_qm {scalar_t__ ver; TYPE_1__* pdev; scalar_t__ io_base; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int BIT (int ) ;
 scalar_t__ QM_CACHE_WB_DONE ;
 scalar_t__ QM_CACHE_WB_START ;
 scalar_t__ QM_HW_V2 ;
 int dev_err (int *,char*) ;
 scalar_t__ readl_relaxed_poll_timeout (scalar_t__,unsigned int,unsigned int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hisi_qm_cache_wb(struct hisi_qm *qm)
{
 unsigned int val;

 if (qm->ver == QM_HW_V2) {
  writel(0x1, qm->io_base + QM_CACHE_WB_START);
  if (readl_relaxed_poll_timeout(qm->io_base + QM_CACHE_WB_DONE,
            val, val & BIT(0), 10, 1000))
   dev_err(&qm->pdev->dev, "QM writeback sqc cache fail!\n");
 }
}
