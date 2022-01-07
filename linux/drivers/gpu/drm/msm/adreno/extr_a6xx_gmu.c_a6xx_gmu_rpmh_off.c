
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {int dummy; } ;


 int REG_A6XX_RSCC_TCS0_DRV0_STATUS ;
 int REG_A6XX_RSCC_TCS1_DRV0_STATUS ;
 int REG_A6XX_RSCC_TCS2_DRV0_STATUS ;
 int REG_A6XX_RSCC_TCS3_DRV0_STATUS ;
 int gmu_poll_timeout (struct a6xx_gmu*,int ,int,int,int,int) ;

__attribute__((used)) static void a6xx_gmu_rpmh_off(struct a6xx_gmu *gmu)
{
 u32 val;


 gmu_poll_timeout(gmu, REG_A6XX_RSCC_TCS0_DRV0_STATUS, val,
  (val & 1), 100, 10000);
 gmu_poll_timeout(gmu, REG_A6XX_RSCC_TCS1_DRV0_STATUS, val,
  (val & 1), 100, 10000);
 gmu_poll_timeout(gmu, REG_A6XX_RSCC_TCS2_DRV0_STATUS, val,
  (val & 1), 100, 10000);
 gmu_poll_timeout(gmu, REG_A6XX_RSCC_TCS3_DRV0_STATUS, val,
  (val & 1), 100, 1000);
}
