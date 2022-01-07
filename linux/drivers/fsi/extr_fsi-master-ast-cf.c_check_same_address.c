
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsi_master_acf {int last_addr; } ;



__attribute__((used)) static bool check_same_address(struct fsi_master_acf *master, int id,
          uint32_t addr)
{

 return master->last_addr == (((id & 0x3) << 21) | (addr & ~0x3));
}
