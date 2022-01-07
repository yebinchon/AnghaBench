
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int event; } ;
struct TYPE_5__ {TYPE_3__ power_state; } ;
struct TYPE_6__ {TYPE_1__ power; } ;
struct pci_dev {TYPE_2__ dev; } ;
typedef int pmac_ide_hwif_t ;
typedef TYPE_3__ pm_message_t ;


 int PM_EVENT_SLEEP ;
 int * pci_get_drvdata (struct pci_dev*) ;
 int pmac_ide_do_suspend (int *) ;

__attribute__((used)) static int
pmac_ide_pci_suspend(struct pci_dev *pdev, pm_message_t mesg)
{
 pmac_ide_hwif_t *pmif = pci_get_drvdata(pdev);
 int rc = 0;

 if (mesg.event != pdev->dev.power.power_state.event
   && (mesg.event & PM_EVENT_SLEEP)) {
  rc = pmac_ide_do_suspend(pmif);
  if (rc == 0)
   pdev->dev.power.power_state = mesg;
 }

 return rc;
}
