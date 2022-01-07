
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ide_acpi_hwif_link {int dummy; } ;
struct TYPE_6__ {TYPE_2__* acpidata; int name; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {int obj_handle; } ;


 int DEBPRINT (char*,int ) ;
 int GFP_KERNEL ;
 int ide_acpi_hwif_get_handle (TYPE_1__*) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;

void ide_acpi_init_port(ide_hwif_t *hwif)
{
 hwif->acpidata = kzalloc(sizeof(struct ide_acpi_hwif_link), GFP_KERNEL);
 if (!hwif->acpidata)
  return;

 hwif->acpidata->obj_handle = ide_acpi_hwif_get_handle(hwif);
 if (!hwif->acpidata->obj_handle) {
  DEBPRINT("no ACPI object for %s found\n", hwif->name);
  kfree(hwif->acpidata);
  hwif->acpidata = ((void*)0);
 }
}
