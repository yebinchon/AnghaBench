
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int event; } ;
struct TYPE_6__ {TYPE_3__ power_state; } ;
struct TYPE_9__ {TYPE_1__ power; } ;
struct TYPE_7__ {TYPE_5__ dev; } ;
struct macio_dev {TYPE_2__ ofdev; } ;
typedef int pmac_ide_hwif_t ;
typedef TYPE_3__ pm_message_t ;


 int PM_EVENT_SLEEP ;
 int * dev_get_drvdata (TYPE_5__*) ;
 int pmac_ide_do_suspend (int *) ;

__attribute__((used)) static int
pmac_ide_macio_suspend(struct macio_dev *mdev, pm_message_t mesg)
{
 pmac_ide_hwif_t *pmif = dev_get_drvdata(&mdev->ofdev.dev);
 int rc = 0;

 if (mesg.event != mdev->ofdev.dev.power.power_state.event
   && (mesg.event & PM_EVENT_SLEEP)) {
  rc = pmac_ide_do_suspend(pmif);
  if (rc == 0)
   mdev->ofdev.dev.power.power_state = mesg;
 }

 return rc;
}
