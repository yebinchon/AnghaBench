
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct msm_mmu {int dummy; } ;
struct msm_gpummu {int gpu; scalar_t__* table; } ;


 int A2XX_MH_MMU_INVALIDATE_INVALIDATE_ALL ;
 int A2XX_MH_MMU_INVALIDATE_INVALIDATE_TC ;
 unsigned int GPUMMU_PAGE_SIZE ;
 unsigned int GPUMMU_VA_START ;
 int REG_A2XX_MH_MMU_INVALIDATE ;
 int gpu_write (int ,int ,int) ;
 struct msm_gpummu* to_msm_gpummu (struct msm_mmu*) ;

__attribute__((used)) static int msm_gpummu_unmap(struct msm_mmu *mmu, uint64_t iova, unsigned len)
{
 struct msm_gpummu *gpummu = to_msm_gpummu(mmu);
 unsigned idx = (iova - GPUMMU_VA_START) / GPUMMU_PAGE_SIZE;
 unsigned i;

 for (i = 0; i < len / GPUMMU_PAGE_SIZE; i++, idx++)
                gpummu->table[idx] = 0;

 gpu_write(gpummu->gpu, REG_A2XX_MH_MMU_INVALIDATE,
  A2XX_MH_MMU_INVALIDATE_INVALIDATE_ALL |
  A2XX_MH_MMU_INVALIDATE_INVALIDATE_TC);
 return 0;
}
