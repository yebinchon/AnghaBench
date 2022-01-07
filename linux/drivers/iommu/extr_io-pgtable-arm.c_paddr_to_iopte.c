
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_lpae_io_pgtable {int dummy; } ;
typedef int phys_addr_t ;
typedef int arm_lpae_iopte ;


 int ARM_LPAE_PTE_ADDR_MASK ;

__attribute__((used)) static arm_lpae_iopte paddr_to_iopte(phys_addr_t paddr,
         struct arm_lpae_io_pgtable *data)
{
 arm_lpae_iopte pte = paddr;


 return (pte | (pte >> (48 - 12))) & ARM_LPAE_PTE_ADDR_MASK;
}
