
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ acpidata; } ;
typedef TYPE_1__ ide_hwif_t ;


 scalar_t__ ide_noacpi ;

bool ide_port_acpi(ide_hwif_t *hwif)
{
 return ide_noacpi == 0 && hwif->acpidata;
}
