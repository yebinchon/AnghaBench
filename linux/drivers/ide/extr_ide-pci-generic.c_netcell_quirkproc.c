
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* id; } ;
typedef TYPE_1__ ide_drive_t ;


 size_t ATA_ID_CSF_DEFAULT ;

__attribute__((used)) static void netcell_quirkproc(ide_drive_t *drive)
{

 drive->id[ATA_ID_CSF_DEFAULT] |= 0x4000;
}
