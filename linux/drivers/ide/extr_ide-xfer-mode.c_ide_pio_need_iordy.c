
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {int id; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int port_flags; } ;


 int IDE_PFLAG_PROBING ;
 int ata_id_pio_need_iordy (int ,scalar_t__ const) ;

int ide_pio_need_iordy(ide_drive_t *drive, const u8 pio)
{




 if (pio == 0 && (drive->hwif->port_flags & IDE_PFLAG_PROBING))
  return 0;
 return ata_id_pio_need_iordy(drive->id, pio);
}
