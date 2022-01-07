
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ channel; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int dma_mode; } ;
typedef TYPE_2__ ide_drive_t ;


 int BUSMASTER_TIMEOUT ;
 int CY82_DATA_PORT ;
 int CY82_INDEX_CHANNEL0 ;
 int CY82_INDEX_CHANNEL1 ;
 int CY82_INDEX_PORT ;
 int CY82_INDEX_TIMEOUT ;
 int outb (int,int ) ;

__attribute__((used)) static void cy82c693_set_dma_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 const u8 mode = drive->dma_mode;
 u8 single = (mode & 0x10) >> 4, index = 0, data = 0;

 index = hwif->channel ? CY82_INDEX_CHANNEL1 : CY82_INDEX_CHANNEL0;

 data = (mode & 3) | (single << 2);

 outb(index, CY82_INDEX_PORT);
 outb(data, CY82_DATA_PORT);
 data = BUSMASTER_TIMEOUT;
 outb(CY82_INDEX_TIMEOUT, CY82_INDEX_PORT);
 outb(data, CY82_DATA_PORT);
}
