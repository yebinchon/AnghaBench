
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int* id; int mult_req; int special_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 size_t ATA_ID_MAX_MULTSECT ;
 size_t ATA_ID_MULTSECT ;
 int IDE_SFLAG_SET_MULTMODE ;

__attribute__((used)) static void ide_disk_init_mult_count(ide_drive_t *drive)
{
 u16 *id = drive->id;
 u8 max_multsect = id[ATA_ID_MAX_MULTSECT] & 0xff;

 if (max_multsect) {
  if ((max_multsect / 2) > 1)
   id[ATA_ID_MULTSECT] = max_multsect | 0x100;
  else
   id[ATA_ID_MULTSECT] &= ~0x1ff;

  drive->mult_req = id[ATA_ID_MULTSECT] & 0xff;

  if (drive->mult_req)
   drive->special_flags |= IDE_SFLAG_SET_MULTMODE;
 }
}
