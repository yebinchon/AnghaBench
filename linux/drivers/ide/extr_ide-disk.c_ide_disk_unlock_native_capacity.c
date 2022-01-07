
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int dev_flags; int probed_capacity; int * id; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_DFLAG_LBA ;
 int IDE_DFLAG_NOHPA ;
 scalar_t__ ata_id_hpa_enabled (int *) ;
 int ata_id_lba48_enabled (int *) ;
 int ide_disk_hpa_get_native_capacity (TYPE_1__*,int) ;
 scalar_t__ ide_disk_hpa_set_capacity (TYPE_1__*,int ,int) ;

__attribute__((used)) static void ide_disk_unlock_native_capacity(ide_drive_t *drive)
{
 u16 *id = drive->id;
 int lba48 = ata_id_lba48_enabled(id);

 if ((drive->dev_flags & IDE_DFLAG_LBA) == 0 ||
     ata_id_hpa_enabled(id) == 0)
  return;





 if (!ide_disk_hpa_get_native_capacity(drive, lba48))
  return;

 if (ide_disk_hpa_set_capacity(drive, drive->probed_capacity, lba48))
  drive->dev_flags |= IDE_DFLAG_NOHPA;
}
