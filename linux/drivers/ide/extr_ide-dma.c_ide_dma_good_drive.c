
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ ide_drive_t ;


 int drive_whitelist ;
 int ide_in_drive_list (int ,int ) ;

int ide_dma_good_drive(ide_drive_t *drive)
{
 return ide_in_drive_list(drive->id, drive_whitelist);
}
