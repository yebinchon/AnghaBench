
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_atapi_pc {int* c; int flags; } ;
typedef int ide_drive_t ;


 int PC_FLAG_WAIT_FOR_DSC ;
 int WRITE_FILEMARKS ;
 int ide_init_pc (struct ide_atapi_pc*) ;

__attribute__((used)) static void idetape_create_write_filemark_cmd(ide_drive_t *drive,
  struct ide_atapi_pc *pc, int write_filemark)
{
 ide_init_pc(pc);
 pc->c[0] = WRITE_FILEMARKS;
 pc->c[4] = write_filemark;
 pc->flags |= PC_FLAG_WAIT_FOR_DSC;
}
