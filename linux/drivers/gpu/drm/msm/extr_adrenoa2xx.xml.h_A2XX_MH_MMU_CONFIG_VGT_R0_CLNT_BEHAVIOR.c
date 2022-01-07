
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_mmu_clnt_beh { ____Placeholder_adreno_mmu_clnt_beh } adreno_mmu_clnt_beh ;


 int A2XX_MH_MMU_CONFIG_VGT_R0_CLNT_BEHAVIOR__MASK ;
 int A2XX_MH_MMU_CONFIG_VGT_R0_CLNT_BEHAVIOR__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_MH_MMU_CONFIG_VGT_R0_CLNT_BEHAVIOR(enum adreno_mmu_clnt_beh val)
{
 return ((val) << A2XX_MH_MMU_CONFIG_VGT_R0_CLNT_BEHAVIOR__SHIFT) & A2XX_MH_MMU_CONFIG_VGT_R0_CLNT_BEHAVIOR__MASK;
}
