
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct arm_lpae_io_pgtable {int pg_shift; } ;
typedef int phys_addr_t ;
typedef int arm_lpae_iopte ;


 int ARM_LPAE_PTE_ADDR_MASK ;

__attribute__((used)) static phys_addr_t iopte_to_paddr(arm_lpae_iopte pte,
      struct arm_lpae_io_pgtable *data)
{
 u64 paddr = pte & ARM_LPAE_PTE_ADDR_MASK;

 if (data->pg_shift < 16)
  return paddr;


 return (paddr | (paddr << (48 - 12))) & (ARM_LPAE_PTE_ADDR_MASK << 4);
}
