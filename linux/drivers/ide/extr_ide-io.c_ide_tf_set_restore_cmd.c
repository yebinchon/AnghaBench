
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ide_taskfile {int command; int nsect; } ;
struct TYPE_3__ {int sect; } ;
typedef TYPE_1__ ide_drive_t ;


 int ATA_CMD_RESTORE ;

__attribute__((used)) static void ide_tf_set_restore_cmd(ide_drive_t *drive, struct ide_taskfile *tf)
{
 tf->nsect = drive->sect;
 tf->command = ATA_CMD_RESTORE;
}
