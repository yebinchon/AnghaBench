
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int channel; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int amd_80w ;

__attribute__((used)) static u8 amd_cable_detect(ide_hwif_t *hwif)
{
 if ((amd_80w >> hwif->channel) & 1)
  return ATA_CBL_PATA80;
 else
  return ATA_CBL_PATA40;
}
