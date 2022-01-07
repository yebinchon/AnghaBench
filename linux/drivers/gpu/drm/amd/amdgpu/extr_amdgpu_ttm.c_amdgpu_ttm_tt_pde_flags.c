
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_tt {scalar_t__ caching_state; } ;
struct ttm_mem_reg {scalar_t__ mem_type; } ;


 int AMDGPU_PTE_SNOOPED ;
 int AMDGPU_PTE_SYSTEM ;
 int AMDGPU_PTE_VALID ;
 scalar_t__ TTM_PL_SYSTEM ;
 scalar_t__ TTM_PL_TT ;
 scalar_t__ tt_cached ;

uint64_t amdgpu_ttm_tt_pde_flags(struct ttm_tt *ttm, struct ttm_mem_reg *mem)
{
 uint64_t flags = 0;

 if (mem && mem->mem_type != TTM_PL_SYSTEM)
  flags |= AMDGPU_PTE_VALID;

 if (mem && mem->mem_type == TTM_PL_TT) {
  flags |= AMDGPU_PTE_SYSTEM;

  if (ttm->caching_state == tt_cached)
   flags |= AMDGPU_PTE_SNOOPED;
 }

 return flags;
}
