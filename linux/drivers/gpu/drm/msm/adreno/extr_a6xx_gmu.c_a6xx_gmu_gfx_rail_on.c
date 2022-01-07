
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {int* gx_arc_votes; int nr_gpu_freqs; } ;


 int GMU_OOB_BOOT_SLUMBER ;
 int REG_A6XX_GMU_BOOT_SLUMBER_OPTION ;
 int REG_A6XX_GMU_GX_VOTE_IDX ;
 int REG_A6XX_GMU_MX_VOTE_IDX ;
 int a6xx_gmu_set_oob (struct a6xx_gmu*,int ) ;
 int gmu_write (struct a6xx_gmu*,int ,int) ;

__attribute__((used)) static int a6xx_gmu_gfx_rail_on(struct a6xx_gmu *gmu)
{
 u32 vote;


 gmu_write(gmu, REG_A6XX_GMU_BOOT_SLUMBER_OPTION, 0);


 vote = gmu->gx_arc_votes[gmu->nr_gpu_freqs - 1];

 gmu_write(gmu, REG_A6XX_GMU_GX_VOTE_IDX, vote & 0xff);
 gmu_write(gmu, REG_A6XX_GMU_MX_VOTE_IDX, (vote >> 8) & 0xff);


 return a6xx_gmu_set_oob(gmu, GMU_OOB_BOOT_SLUMBER);
}
