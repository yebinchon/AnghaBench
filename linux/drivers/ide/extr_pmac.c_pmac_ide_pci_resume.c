
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ event; } ;
struct TYPE_4__ {TYPE_3__ power_state; } ;
struct TYPE_5__ {TYPE_1__ power; } ;
struct pci_dev {TYPE_2__ dev; } ;
typedef int pmac_ide_hwif_t ;


 TYPE_3__ PMSG_ON ;
 scalar_t__ PM_EVENT_ON ;
 int * pci_get_drvdata (struct pci_dev*) ;
 int pmac_ide_do_resume (int *) ;

__attribute__((used)) static int
pmac_ide_pci_resume(struct pci_dev *pdev)
{
 pmac_ide_hwif_t *pmif = pci_get_drvdata(pdev);
 int rc = 0;

 if (pdev->dev.power.power_state.event != PM_EVENT_ON) {
  rc = pmac_ide_do_resume(pmif);
  if (rc == 0)
   pdev->dev.power.power_state = PMSG_ON;
 }

 return rc;
}
