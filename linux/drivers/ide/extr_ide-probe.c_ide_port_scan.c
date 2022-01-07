
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int present; int port_flags; } ;
typedef TYPE_1__ ide_hwif_t ;


 int IDE_PFLAG_PROBING ;
 int hwif_register_devices (TYPE_1__*) ;
 int ide_acpi_port_init_devices (TYPE_1__*) ;
 int ide_port_apply_params (TYPE_1__*) ;
 int ide_port_cable_detect (TYPE_1__*) ;
 int ide_port_init_devices (TYPE_1__*) ;
 int ide_port_setup_devices (TYPE_1__*) ;
 int ide_port_tune_devices (TYPE_1__*) ;
 int ide_probe_port (TYPE_1__*) ;
 int ide_proc_port_register_devices (TYPE_1__*) ;

void ide_port_scan(ide_hwif_t *hwif)
{
 int rc;

 ide_port_apply_params(hwif);
 ide_port_cable_detect(hwif);

 hwif->port_flags |= IDE_PFLAG_PROBING;

 ide_port_init_devices(hwif);

 rc = ide_probe_port(hwif);

 hwif->port_flags &= ~IDE_PFLAG_PROBING;

 if (rc < 0)
  return;

 hwif->present = 1;

 ide_port_tune_devices(hwif);
 ide_port_setup_devices(hwif);
 ide_acpi_port_init_devices(hwif);
 hwif_register_devices(hwif);
 ide_proc_port_register_devices(hwif);
}
