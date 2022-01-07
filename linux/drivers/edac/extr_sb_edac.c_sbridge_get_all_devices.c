
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_id_table {scalar_t__ type; int n_devs_per_sock; TYPE_1__* descr; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ dev_id; } ;


 int ENODEV ;
 scalar_t__ KNIGHTS_LANDING ;
 int sbridge_get_onedevice (struct pci_dev**,int *,struct pci_id_table const*,int,int) ;
 int sbridge_put_all_devices () ;

__attribute__((used)) static int sbridge_get_all_devices(u8 *num_mc,
     const struct pci_id_table *table)
{
 int i, rc;
 struct pci_dev *pdev = ((void*)0);
 int allow_dups = 0;
 int multi_bus = 0;

 if (table->type == KNIGHTS_LANDING)
  allow_dups = multi_bus = 1;
 while (table && table->descr) {
  for (i = 0; i < table->n_devs_per_sock; i++) {
   if (!allow_dups || i == 0 ||
     table->descr[i].dev_id !=
      table->descr[i-1].dev_id) {
    pdev = ((void*)0);
   }
   do {
    rc = sbridge_get_onedevice(&pdev, num_mc,
          table, i, multi_bus);
    if (rc < 0) {
     if (i == 0) {
      i = table->n_devs_per_sock;
      break;
     }
     sbridge_put_all_devices();
     return -ENODEV;
    }
   } while (pdev && !allow_dups);
  }
  table++;
 }

 return 0;
}
