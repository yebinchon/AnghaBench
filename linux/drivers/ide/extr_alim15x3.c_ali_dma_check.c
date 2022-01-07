
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ide_cmd {int tf_flags; } ;
struct TYPE_3__ {scalar_t__ media; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_TFLAG_WRITE ;
 scalar_t__ ide_disk ;
 int m5229_revision ;

__attribute__((used)) static int ali_dma_check(ide_drive_t *drive, struct ide_cmd *cmd)
{
 if (m5229_revision < 0xC2 && drive->media != ide_disk) {
  if (cmd->tf_flags & IDE_TFLAG_WRITE)
   return 1;
 }
 return 0;
}
