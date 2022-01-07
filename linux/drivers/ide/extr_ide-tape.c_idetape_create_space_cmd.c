
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ide_atapi_pc {int flags; scalar_t__* c; } ;


 int PC_FLAG_WAIT_FOR_DSC ;
 scalar_t__ SPACE ;
 int cpu_to_be32 (int) ;
 int ide_init_pc (struct ide_atapi_pc*) ;
 int put_unaligned (int ,unsigned int*) ;

__attribute__((used)) static void idetape_create_space_cmd(struct ide_atapi_pc *pc, int count, u8 cmd)
{
 ide_init_pc(pc);
 pc->c[0] = SPACE;
 put_unaligned(cpu_to_be32(count), (unsigned int *) &pc->c[1]);
 pc->c[1] = cmd;
 pc->flags |= PC_FLAG_WAIT_FOR_DSC;
}
