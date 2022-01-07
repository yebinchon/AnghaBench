
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsi_master_gpio {int last_addr; } ;
typedef int int32_t ;


 int LAST_ADDR_INVALID ;

__attribute__((used)) static bool check_relative_address(struct fsi_master_gpio *master, int id,
  uint32_t addr, uint32_t *rel_addrp)
{
 uint32_t last_addr = master->last_addr;
 int32_t rel_addr;

 if (last_addr == LAST_ADDR_INVALID)
  return 0;





 if (((last_addr >> 21) & 0x3) != id)
  return 0;


 last_addr &= (1 << 21) - 1;



 rel_addr = addr - last_addr;
 if (rel_addr > 255 || rel_addr < -256)
  return 0;

 *rel_addrp = (uint32_t)rel_addr;

 return 1;
}
