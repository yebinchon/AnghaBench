
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int index; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ide_free_port_slot (int ) ;
 int ide_port_free_devices (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void ide_port_free(ide_hwif_t *hwif)
{
 ide_port_free_devices(hwif);
 ide_free_port_slot(hwif->index);
 kfree(hwif);
}
