
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int atapi_flags; int dev_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_AFLAG_TOC_VALID ;
 int IDE_DFLAG_MEDIA_CHANGED ;

__attribute__((used)) static void cdrom_saw_media_change(ide_drive_t *drive)
{
 drive->dev_flags |= IDE_DFLAG_MEDIA_CHANGED;
 drive->atapi_flags &= ~IDE_AFLAG_TOC_VALID;
}
