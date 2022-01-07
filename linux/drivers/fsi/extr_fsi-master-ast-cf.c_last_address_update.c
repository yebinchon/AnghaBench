
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsi_master_acf {int last_addr; } ;


 int LAST_ADDR_INVALID ;

__attribute__((used)) static void last_address_update(struct fsi_master_acf *master,
    int id, bool valid, uint32_t addr)
{
 if (!valid)
  master->last_addr = LAST_ADDR_INVALID;
 else
  master->last_addr = ((id & 0x3) << 21) | (addr & ~0x3);
}
