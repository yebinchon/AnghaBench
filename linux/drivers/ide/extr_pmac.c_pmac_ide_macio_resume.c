
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ event; } ;
struct TYPE_5__ {TYPE_4__ power_state; } ;
struct TYPE_7__ {TYPE_1__ power; } ;
struct TYPE_6__ {TYPE_3__ dev; } ;
struct macio_dev {TYPE_2__ ofdev; } ;
typedef int pmac_ide_hwif_t ;


 TYPE_4__ PMSG_ON ;
 scalar_t__ PM_EVENT_ON ;
 int * dev_get_drvdata (TYPE_3__*) ;
 int pmac_ide_do_resume (int *) ;

__attribute__((used)) static int
pmac_ide_macio_resume(struct macio_dev *mdev)
{
 pmac_ide_hwif_t *pmif = dev_get_drvdata(&mdev->ofdev.dev);
 int rc = 0;

 if (mdev->ofdev.dev.power.power_state.event != PM_EVENT_ON) {
  rc = pmac_ide_do_resume(pmif);
  if (rc == 0)
   mdev->ofdev.dev.power.power_state = PMSG_ON;
 }

 return rc;
}
