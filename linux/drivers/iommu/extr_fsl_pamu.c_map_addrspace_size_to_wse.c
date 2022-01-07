
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int BUG_ON (int) ;
 unsigned int fls64 (int) ;

__attribute__((used)) static unsigned int map_addrspace_size_to_wse(phys_addr_t addrspace_size)
{

 BUG_ON(addrspace_size & (addrspace_size - 1));


 return fls64(addrspace_size) - 2;
}
