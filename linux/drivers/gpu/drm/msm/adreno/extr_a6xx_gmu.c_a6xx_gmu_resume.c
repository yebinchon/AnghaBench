
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int icc_path; } ;
struct adreno_gpu {struct msm_gpu base; } ;
struct a6xx_gmu {int hung; int dev; int gmu_irq; int gxpd; scalar_t__ nr_gpu_freqs; int hfi_irq; int clocks; int nr_clocks; int core_clk; int initialized; } ;
struct a6xx_gpu {struct a6xx_gmu gmu; struct adreno_gpu base; } ;


 int A6XX_GMU_IRQ_MASK ;
 int A6XX_HFI_IRQ_MASK ;
 int GMU_COLD_BOOT ;
 int GMU_WARM_BOOT ;
 int IS_ERR_OR_NULL (int ) ;
 int MBps_to_icc (int) ;
 int REG_A6XX_GMU_AO_HOST_INTERRUPT_CLR ;
 int REG_A6XX_GMU_AO_HOST_INTERRUPT_MASK ;
 int REG_A6XX_GMU_GENERAL_7 ;
 int REG_A6XX_GMU_GMU2HOST_INTR_CLR ;
 int REG_A6XX_GMU_GMU2HOST_INTR_MASK ;
 scalar_t__ WARN (int,char*) ;
 int __a6xx_gmu_set_freq (struct a6xx_gmu*,scalar_t__) ;
 int a6xx_gmu_fw_start (struct a6xx_gmu*,int) ;
 int a6xx_hfi_start (struct a6xx_gmu*,int) ;
 int a6xx_rpmh_stop (struct a6xx_gmu*) ;
 int clk_bulk_prepare_enable (int ,int ) ;
 int clk_set_rate (int ,int) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int gmu_read (struct a6xx_gmu*,int ) ;
 int gmu_write (struct a6xx_gmu*,int ,int ) ;
 int icc_set_bw (int ,int ,int ) ;
 int pm_runtime_get (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;

int a6xx_gmu_resume(struct a6xx_gpu *a6xx_gpu)
{
 struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
 struct msm_gpu *gpu = &adreno_gpu->base;
 struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
 int status, ret;

 if (WARN(!gmu->initialized, "The GMU is not set up yet\n"))
  return 0;

 gmu->hung = 0;


 pm_runtime_get_sync(gmu->dev);


 clk_set_rate(gmu->core_clk, 200000000);
 ret = clk_bulk_prepare_enable(gmu->nr_clocks, gmu->clocks);
 if (ret) {
  pm_runtime_put(gmu->dev);
  return ret;
 }


 icc_set_bw(gpu->icc_path, 0, MBps_to_icc(3072));


 gmu_write(gmu, REG_A6XX_GMU_AO_HOST_INTERRUPT_CLR, ~0);
 gmu_write(gmu, REG_A6XX_GMU_AO_HOST_INTERRUPT_MASK, ~A6XX_GMU_IRQ_MASK);
 enable_irq(gmu->gmu_irq);


 status = gmu_read(gmu, REG_A6XX_GMU_GENERAL_7) == 1 ?
  GMU_WARM_BOOT : GMU_COLD_BOOT;

 ret = a6xx_gmu_fw_start(gmu, status);
 if (ret)
  goto out;

 ret = a6xx_hfi_start(gmu, status);
 if (ret)
  goto out;





 gmu_write(gmu, REG_A6XX_GMU_GMU2HOST_INTR_CLR, ~0);
 gmu_write(gmu, REG_A6XX_GMU_GMU2HOST_INTR_MASK, ~A6XX_HFI_IRQ_MASK);
 enable_irq(gmu->hfi_irq);


 __a6xx_gmu_set_freq(gmu, gmu->nr_gpu_freqs - 1);






 if (!IS_ERR_OR_NULL(gmu->gxpd))
  pm_runtime_get(gmu->gxpd);

out:

 if (ret) {
  disable_irq(gmu->gmu_irq);
  a6xx_rpmh_stop(gmu);
  pm_runtime_put(gmu->dev);
 }

 return ret;
}
