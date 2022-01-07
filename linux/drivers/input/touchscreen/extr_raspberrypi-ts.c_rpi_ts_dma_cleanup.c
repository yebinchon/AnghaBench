
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpi_ts {int fw_regs_phys; int fw_regs_va; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;

__attribute__((used)) static void rpi_ts_dma_cleanup(void *data)
{
 struct rpi_ts *ts = data;
 struct device *dev = &ts->pdev->dev;

 dma_free_coherent(dev, PAGE_SIZE, ts->fw_regs_va, ts->fw_regs_phys);
}
