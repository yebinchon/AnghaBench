
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int get_indexed_reg (int *,int) ;

__attribute__((used)) static u8 pdcnew_cable_detect(ide_hwif_t *hwif)
{
 if (get_indexed_reg(hwif, 0x0b) & 0x04)
  return ATA_CBL_PATA40;
 else
  return ATA_CBL_PATA80;
}
