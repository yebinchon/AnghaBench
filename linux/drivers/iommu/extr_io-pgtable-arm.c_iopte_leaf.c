
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum io_pgtable_fmt { ____Placeholder_io_pgtable_fmt } io_pgtable_fmt ;
typedef int arm_lpae_iopte ;


 int ARM_LPAE_MAX_LEVELS ;
 scalar_t__ ARM_LPAE_PTE_TYPE_BLOCK ;
 scalar_t__ ARM_LPAE_PTE_TYPE_PAGE ;
 int ARM_MALI_LPAE ;
 scalar_t__ iopte_type (int ,int) ;

__attribute__((used)) static inline bool iopte_leaf(arm_lpae_iopte pte, int lvl,
         enum io_pgtable_fmt fmt)
{
 if (lvl == (ARM_LPAE_MAX_LEVELS - 1) && fmt != ARM_MALI_LPAE)
  return iopte_type(pte, lvl) == ARM_LPAE_PTE_TYPE_PAGE;

 return iopte_type(pte, lvl) == ARM_LPAE_PTE_TYPE_BLOCK;
}
