
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {int initialized; } ;


 int A6XX_GMU_SPTPRAC_PWR_CLK_STATUS_SPTPRAC_GDSC_POWER_OFF ;
 int A6XX_GMU_SPTPRAC_PWR_CLK_STATUS_SP_CLOCK_OFF ;
 int REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS ;
 int gmu_read (struct a6xx_gmu*,int ) ;

bool a6xx_gmu_sptprac_is_on(struct a6xx_gmu *gmu)
{
 u32 val;


 if (!gmu->initialized)
  return 0;

 val = gmu_read(gmu, REG_A6XX_GMU_SPTPRAC_PWR_CLK_STATUS);

 return !(val &
  (A6XX_GMU_SPTPRAC_PWR_CLK_STATUS_SPTPRAC_GDSC_POWER_OFF |
  A6XX_GMU_SPTPRAC_PWR_CLK_STATUS_SP_CLOCK_OFF));
}
