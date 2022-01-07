
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct hpt_info {int chip_type; } ;
struct TYPE_5__ {int ultra_mask; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int id; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int ATA_UDMA2 ;
 int ATA_UDMA3 ;
 int ATA_UDMA4 ;
 int HPT366_ALLOW_ATA66_3 ;
 int HPT366_ALLOW_ATA66_4 ;



 int HPT370_ALLOW_ATA100_5 ;




 int ata_id_is_sata (int ) ;
 int bad_ata100_5 ;
 int bad_ata33 ;
 int bad_ata66_3 ;
 int bad_ata66_4 ;
 scalar_t__ check_in_drive_list (TYPE_2__*,int ) ;
 struct hpt_info* hpt3xx_get_info (int ) ;

__attribute__((used)) static u8 hpt3xx_udma_filter(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 struct hpt_info *info = hpt3xx_get_info(hwif->dev);
 u8 mask = hwif->ultra_mask;

 switch (info->chip_type) {
 case 134:
  if (!HPT366_ALLOW_ATA66_4 ||
      check_in_drive_list(drive, bad_ata66_4))
   mask = ATA_UDMA3;

  if (!HPT366_ALLOW_ATA66_3 ||
      check_in_drive_list(drive, bad_ata66_3))
   mask = ATA_UDMA2;
  break;
 case 133:
  if (!HPT370_ALLOW_ATA100_5 ||
      check_in_drive_list(drive, bad_ata100_5))
   mask = ATA_UDMA4;
  break;
 case 132:
  if (!HPT370_ALLOW_ATA100_5 ||
      check_in_drive_list(drive, bad_ata100_5))
   return ATA_UDMA4;

 case 131 :
 case 130:
 case 129:
 case 128 :
  if (ata_id_is_sata(drive->id))
   mask &= ~0x0e;

 default:
  return mask;
 }

 return check_in_drive_list(drive, bad_ata33) ? 0x00 : mask;
}
