
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ded; int sec; } ;
struct ppc4xx_edac_pdata {int dcr_host; TYPE_1__ irqs; } ;
struct platform_device {int dev; } ;
struct mem_ctl_info {int pdev; struct ppc4xx_edac_pdata* pvt_info; } ;


 scalar_t__ EDAC_OPSTATE_INT ;
 int SDRAM_DCR_RESOURCE_LEN ;
 int dcr_unmap (int ,int ) ;
 struct mem_ctl_info* dev_get_drvdata (int *) ;
 int edac_mc_del_mc (int ) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 scalar_t__ edac_op_state ;
 int free_irq (int ,struct mem_ctl_info*) ;

__attribute__((used)) static int
ppc4xx_edac_remove(struct platform_device *op)
{
 struct mem_ctl_info *mci = dev_get_drvdata(&op->dev);
 struct ppc4xx_edac_pdata *pdata = mci->pvt_info;

 if (edac_op_state == EDAC_OPSTATE_INT) {
  free_irq(pdata->irqs.sec, mci);
  free_irq(pdata->irqs.ded, mci);
 }

 dcr_unmap(pdata->dcr_host, SDRAM_DCR_RESOURCE_LEN);

 edac_mc_del_mc(mci->pdev);
 edac_mc_free(mci);

 return 0;
}
