
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_atapi_pc {int* c; int flags; } ;


 int ERASE ;
 int PC_FLAG_WAIT_FOR_DSC ;
 int ide_init_pc (struct ide_atapi_pc*) ;

__attribute__((used)) static void idetape_create_erase_cmd(struct ide_atapi_pc *pc)
{
 ide_init_pc(pc);
 pc->c[0] = ERASE;
 pc->c[1] = 1;
 pc->flags |= PC_FLAG_WAIT_FOR_DSC;
}
