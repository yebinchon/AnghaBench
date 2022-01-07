
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsi_master {int dummy; } ;
typedef int cmd ;
typedef int __be32 ;


 int cpu_to_be32 (int) ;
 int hub_master_write (struct fsi_master*,int,int ,int,int *,int) ;

__attribute__((used)) static int hub_master_break(struct fsi_master *master, int link)
{
 uint32_t addr;
 __be32 cmd;

 addr = 0x4;
 cmd = cpu_to_be32(0xc0de0000);

 return hub_master_write(master, link, 0, addr, &cmd, sizeof(cmd));
}
