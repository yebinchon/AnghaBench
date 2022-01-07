
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {int icc_path; } ;
struct TYPE_2__ {struct msm_gpu base; } ;
struct a6xx_gmu {int dev; int clocks; int nr_clocks; int gxpd; scalar_t__ hung; } ;
struct a6xx_gpu {TYPE_1__ base; struct a6xx_gmu gmu; } ;


 int IS_ERR_OR_NULL (int ) ;
 int a6xx_gmu_force_off (struct a6xx_gmu*) ;
 int a6xx_gmu_shutdown (struct a6xx_gmu*) ;
 int clk_bulk_disable_unprepare (int ,int ) ;
 int icc_set_bw (int ,int ,int ) ;
 int pm_runtime_active (int ) ;
 int pm_runtime_put_sync (int ) ;

int a6xx_gmu_stop(struct a6xx_gpu *a6xx_gpu)
{
 struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
 struct msm_gpu *gpu = &a6xx_gpu->base.base;

 if (!pm_runtime_active(gmu->dev))
  return 0;





 if (gmu->hung)
  a6xx_gmu_force_off(gmu);
 else
  a6xx_gmu_shutdown(gmu);


 icc_set_bw(gpu->icc_path, 0, 0);






 if (!IS_ERR_OR_NULL(gmu->gxpd))
  pm_runtime_put_sync(gmu->gxpd);

 clk_bulk_disable_unprepare(gmu->nr_clocks, gmu->clocks);

 pm_runtime_put_sync(gmu->dev);

 return 0;
}
