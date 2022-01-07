
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct ide_disk_obj {int driver; } ;
struct TYPE_5__ {int dev_flags; int atapi_flags; int queue; int pc_delay; int pc_callback; int * id; struct ide_disk_obj* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 size_t ATA_ID_PROD ;
 int IDEFLOPPY_PC_DELAY ;
 int IDE_AFLAG_CLIK_DRIVE ;
 int IDE_AFLAG_ZIP_DRIVE ;
 int IDE_DFLAG_ATTACH ;
 int IDE_DFLAG_DOORLOCKING ;
 int blk_queue_max_hw_sectors (int ,int) ;
 int ide_floppy_callback ;
 int ide_floppy_get_capacity (TYPE_1__*) ;
 int ide_proc_register_driver (TYPE_1__*,int ) ;
 scalar_t__ strstarts (char*,char*) ;

__attribute__((used)) static void ide_floppy_setup(ide_drive_t *drive)
{
 struct ide_disk_obj *floppy = drive->driver_data;
 u16 *id = drive->id;

 drive->pc_callback = ide_floppy_callback;
 if (strstarts((char *)&id[ATA_ID_PROD], "IOMEGA ZIP 100 ATAPI")) {
  drive->atapi_flags |= IDE_AFLAG_ZIP_DRIVE;

  drive->pc_delay = IDEFLOPPY_PC_DELAY;
  blk_queue_max_hw_sectors(drive->queue, 64);
 }





 if (strstarts((char *)&id[ATA_ID_PROD], "IOMEGA Clik!")) {
  blk_queue_max_hw_sectors(drive->queue, 64);
  drive->atapi_flags |= IDE_AFLAG_CLIK_DRIVE;

  drive->dev_flags &= ~IDE_DFLAG_DOORLOCKING;
 }

 (void) ide_floppy_get_capacity(drive);

 ide_proc_register_driver(drive, floppy->driver);

 drive->dev_flags |= IDE_DFLAG_ATTACH;
}
