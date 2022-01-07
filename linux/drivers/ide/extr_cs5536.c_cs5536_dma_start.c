
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ current_speed; } ;
typedef TYPE_1__ ide_drive_t ;


 unsigned long IDE_DRV_MASK ;
 scalar_t__ XFER_UDMA_0 ;
 int cs5536_program_dtc (TYPE_1__*,unsigned long) ;
 int ide_dma_start (TYPE_1__*) ;
 scalar_t__ ide_get_drivedata (TYPE_1__*) ;

__attribute__((used)) static void cs5536_dma_start(ide_drive_t *drive)
{
 unsigned long timings = (unsigned long)ide_get_drivedata(drive);

 if (drive->current_speed < XFER_UDMA_0 &&
     (timings >> 8) != (timings & IDE_DRV_MASK))
  cs5536_program_dtc(drive, timings >> 8);

 ide_dma_start(drive);
}
