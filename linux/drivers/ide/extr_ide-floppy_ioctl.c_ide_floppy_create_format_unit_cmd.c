
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ide_atapi_pc {int* c; int req_xfer; int flags; } ;


 int GPCMD_FORMAT_UNIT ;
 int PC_FLAG_WRITING ;
 int cpu_to_be32 (int) ;
 int ide_init_pc (struct ide_atapi_pc*) ;
 int memset (int*,int ,int) ;
 int put_unaligned (int ,unsigned int*) ;

__attribute__((used)) static void ide_floppy_create_format_unit_cmd(struct ide_atapi_pc *pc,
           u8 *buf, int b, int l,
           int flags)
{
 ide_init_pc(pc);
 pc->c[0] = GPCMD_FORMAT_UNIT;
 pc->c[1] = 0x17;

 memset(buf, 0, 12);
 buf[1] = 0xA2;


 if (flags & 1)
  buf[1] ^= 0x20;
 buf[3] = 8;

 put_unaligned(cpu_to_be32(b), (unsigned int *)(&buf[4]));
 put_unaligned(cpu_to_be32(l), (unsigned int *)(&buf[8]));
 pc->req_xfer = 12;
 pc->flags |= PC_FLAG_WRITING;
}
