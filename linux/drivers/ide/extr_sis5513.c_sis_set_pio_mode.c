
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ide_hwif_t ;
struct TYPE_5__ {int pio_mode; } ;
typedef TYPE_1__ ide_drive_t ;


 int config_drive_art_rwp (TYPE_1__*) ;
 int sis_program_timings (TYPE_1__*,int ) ;

__attribute__((used)) static void sis_set_pio_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 config_drive_art_rwp(drive);
 sis_program_timings(drive, drive->pio_mode);
}
