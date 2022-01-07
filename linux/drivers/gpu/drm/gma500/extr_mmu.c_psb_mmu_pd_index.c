
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PSB_PDE_SHIFT ;

__attribute__((used)) static inline uint32_t psb_mmu_pd_index(uint32_t offset)
{
 return offset >> PSB_PDE_SHIFT;
}
