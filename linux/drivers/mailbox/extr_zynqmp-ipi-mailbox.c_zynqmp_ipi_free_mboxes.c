
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zynqmp_ipi_pdata {int num_mboxes; struct zynqmp_ipi_mbox* ipi_mboxes; } ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct zynqmp_ipi_mbox {TYPE_1__ dev; int mbox; } ;


 int device_unregister (TYPE_1__*) ;
 int mbox_controller_unregister (int *) ;

__attribute__((used)) static void zynqmp_ipi_free_mboxes(struct zynqmp_ipi_pdata *pdata)
{
 struct zynqmp_ipi_mbox *ipi_mbox;
 int i;

 i = pdata->num_mboxes;
 for (; i >= 0; i--) {
  ipi_mbox = &pdata->ipi_mboxes[i];
  if (ipi_mbox->dev.parent) {
   mbox_controller_unregister(&ipi_mbox->mbox);
   device_unregister(&ipi_mbox->dev);
  }
 }
}
