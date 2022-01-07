
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_drive_t ;


 int trm290_prepare_drive (int *,int) ;

__attribute__((used)) static void trm290_dma_start(ide_drive_t *drive)
{
 trm290_prepare_drive(drive, 1);
}
