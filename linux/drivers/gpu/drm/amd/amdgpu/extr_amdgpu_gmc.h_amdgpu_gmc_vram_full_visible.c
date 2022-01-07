
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_gmc {scalar_t__ real_vram_size; scalar_t__ visible_vram_size; } ;


 int WARN_ON (int) ;

__attribute__((used)) static inline bool amdgpu_gmc_vram_full_visible(struct amdgpu_gmc *gmc)
{
 WARN_ON(gmc->real_vram_size < gmc->visible_vram_size);

 return (gmc->real_vram_size == gmc->visible_vram_size);
}
