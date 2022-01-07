
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ media; TYPE_1__* hwif; int * id; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int ultra_mask; } ;


 size_t ATA_ID_PROD ;
 scalar_t__ chip_is_1543c_e ;
 scalar_t__ ide_disk ;
 int m5229_revision ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static u8 ali_udma_filter(ide_drive_t *drive)
{
 if (m5229_revision > 0x20 && m5229_revision < 0xC2) {
  if (drive->media != ide_disk)
   return 0;
  if (chip_is_1543c_e &&
      strstr((char *)&drive->id[ATA_ID_PROD], "WDC "))
   return 0;
 }

 return drive->hwif->ultra_mask;
}
