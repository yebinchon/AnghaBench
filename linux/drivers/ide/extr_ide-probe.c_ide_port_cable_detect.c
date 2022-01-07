
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ide_port_ops {int (* cable_detect ) (TYPE_1__*) ;} ;
struct TYPE_4__ {int ultra_mask; int cbl; struct ide_port_ops* port_ops; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40_SHORT ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void ide_port_cable_detect(ide_hwif_t *hwif)
{
 const struct ide_port_ops *port_ops = hwif->port_ops;

 if (port_ops && port_ops->cable_detect && (hwif->ultra_mask & 0x78)) {
  if (hwif->cbl != ATA_CBL_PATA40_SHORT)
   hwif->cbl = port_ops->cable_detect(hwif);
 }
}
