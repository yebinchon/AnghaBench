
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_gpu {TYPE_2__* dev; int * rb; TYPE_1__* funcs; } ;
struct adreno_gpu {int gmem; TYPE_3__* info; } ;
struct TYPE_6__ {int quirks; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int (* flush ) (struct msm_gpu*,int ) ;} ;


 int A5XX_INT_MASK ;
 int ADRENO_PROTECT_RW (int,int) ;
 int ADRENO_QUIRK_FAULT_DETECT_MASK ;
 int ADRENO_QUIRK_LMLOADKILL_DISABLE ;
 int ADRENO_QUIRK_TWO_PASS_USE_WFI ;
 int BIT (int) ;
 int CP_EVENT_WRITE ;
 int CP_SET_SECURE_MODE ;
 int EINVAL ;
 int OUT_PKT7 (int ,int ,int) ;
 int OUT_RING (int ,int) ;
 int PERF_CP_ALWAYS_COUNT ;
 int REG_A5XX_CP_ADDR_MODE_CNTL ;
 int REG_A5XX_CP_CHICKEN_DBG ;
 int REG_A5XX_CP_MEQ_THRESHOLDS ;
 int REG_A5XX_CP_MERCIU_SIZE ;
 int REG_A5XX_CP_PERFCTR_CP_SEL_0 ;
 int REG_A5XX_CP_PFP_ME_CNTL ;
 int REG_A5XX_CP_PROTECT (int) ;
 int REG_A5XX_CP_PROTECT_CNTL ;
 int REG_A5XX_CP_ROQ_THRESHOLDS_1 ;
 int REG_A5XX_CP_ROQ_THRESHOLDS_2 ;
 int REG_A5XX_GRAS_ADDR_MODE_CNTL ;
 int REG_A5XX_HLSQ_ADDR_MODE_CNTL ;
 int REG_A5XX_HLSQ_DBG_ECO_CNTL ;
 int REG_A5XX_PC_ADDR_MODE_CNTL ;
 int REG_A5XX_PC_DBG_ECO_CNTL ;
 int REG_A5XX_RBBM_AHB_CNTL0 ;
 int REG_A5XX_RBBM_AHB_CNTL1 ;
 int REG_A5XX_RBBM_AHB_CNTL2 ;
 int REG_A5XX_RBBM_INTERFACE_HANG_INT_CNTL ;
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL11 ;
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL12 ;
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL13 ;
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL14 ;
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL15 ;
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL16 ;
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL17 ;
 int REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL18 ;
 int REG_A5XX_RBBM_INT_0_MASK ;
 int REG_A5XX_RBBM_PERFCTR_CNTL ;
 int REG_A5XX_RBBM_PERFCTR_GPU_BUSY_MASKED ;
 int REG_A5XX_RBBM_PERFCTR_RBBM_SEL_0 ;
 int REG_A5XX_RBBM_SECVID_TRUST_CNTL ;
 int REG_A5XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL ;
 int REG_A5XX_RBBM_SECVID_TSB_CNTL ;
 int REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI ;
 int REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO ;
 int REG_A5XX_RBBM_SECVID_TSB_TRUSTED_SIZE ;
 int REG_A5XX_RB_ADDR_MODE_CNTL ;
 int REG_A5XX_RB_MODE_CNTL ;
 int REG_A5XX_SP_ADDR_MODE_CNTL ;
 int REG_A5XX_TPL1_ADDR_MODE_CNTL ;
 int REG_A5XX_TPL1_MODE_CNTL ;
 int REG_A5XX_UCHE_ADDR_MODE_CNTL ;
 int REG_A5XX_UCHE_CACHE_WAYS ;
 int REG_A5XX_UCHE_DBG_ECO_CNTL_2 ;
 int REG_A5XX_UCHE_GMEM_RANGE_MAX_HI ;
 int REG_A5XX_UCHE_GMEM_RANGE_MAX_LO ;
 int REG_A5XX_UCHE_GMEM_RANGE_MIN_HI ;
 int REG_A5XX_UCHE_GMEM_RANGE_MIN_LO ;
 int REG_A5XX_UCHE_TRAP_BASE_HI ;
 int REG_A5XX_UCHE_TRAP_BASE_LO ;
 int REG_A5XX_UCHE_WRITE_THRU_BASE_HI ;
 int REG_A5XX_UCHE_WRITE_THRU_BASE_LO ;
 int REG_A5XX_VBIF_GATE_OFF_WRREQ_EN ;
 int REG_A5XX_VBIF_ROUND_ROBIN_QOS_ARB ;
 int REG_A5XX_VFD_ADDR_MODE_CNTL ;
 int REG_A5XX_VPC_ADDR_MODE_CNTL ;
 int REG_A5XX_VPC_DBG_ECO_CNTL ;
 int REG_A5XX_VSC_ADDR_MODE_CNTL ;
 int a5xx_gpmu_ucode_init (struct msm_gpu*) ;
 int a5xx_idle (struct msm_gpu*,int ) ;
 int a5xx_me_init (struct msm_gpu*) ;
 int a5xx_power_init (struct msm_gpu*) ;
 int a5xx_preempt_hw_init (struct msm_gpu*) ;
 int a5xx_preempt_start (struct msm_gpu*) ;
 int a5xx_set_hwcg (struct msm_gpu*,int) ;
 int a5xx_ucode_init (struct msm_gpu*) ;
 int a5xx_zap_shader_init (struct msm_gpu*) ;
 int adreno_hw_init (struct msm_gpu*) ;
 scalar_t__ adreno_is_a530 (struct adreno_gpu*) ;
 scalar_t__ adreno_is_a540 (struct adreno_gpu*) ;
 int dev_warn_once (int ,char*) ;
 int gpu_rmw (struct msm_gpu*,int,int,int) ;
 int gpu_write (struct msm_gpu*,int,int) ;
 int gpu_write64 (struct msm_gpu*,int,int ,int) ;
 int stub1 (struct msm_gpu*,int ) ;
 int stub2 (struct msm_gpu*,int ) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int a5xx_hw_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 int ret;

 gpu_write(gpu, REG_A5XX_VBIF_ROUND_ROBIN_QOS_ARB, 0x00000003);

 if (adreno_is_a540(adreno_gpu))
  gpu_write(gpu, REG_A5XX_VBIF_GATE_OFF_WRREQ_EN, 0x00000009);


 gpu_write(gpu, REG_A5XX_RBBM_PERFCTR_GPU_BUSY_MASKED, 0xFFFFFFFF);


 gpu_write(gpu, REG_A5XX_RBBM_AHB_CNTL0, 0x00000001);

 if (adreno_gpu->info->quirks & ADRENO_QUIRK_FAULT_DETECT_MASK) {





  gpu_write(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL11,
   0xF0000000);
  gpu_write(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL12,
   0xFFFFFFFF);
  gpu_write(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL13,
   0xFFFFFFFF);
  gpu_write(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL14,
   0xFFFFFFFF);
  gpu_write(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL15,
   0xFFFFFFFF);
  gpu_write(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL16,
   0xFFFFFFFF);
  gpu_write(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL17,
   0xFFFFFFFF);
  gpu_write(gpu, REG_A5XX_RBBM_INTERFACE_HANG_MASK_CNTL18,
   0xFFFFFFFF);
 }


 gpu_write(gpu, REG_A5XX_RBBM_INTERFACE_HANG_INT_CNTL,
  (1 << 30) | 0xFFFF);


 gpu_write(gpu, REG_A5XX_RBBM_PERFCTR_CNTL, 0x01);


 gpu_write(gpu, REG_A5XX_CP_PERFCTR_CP_SEL_0, PERF_CP_ALWAYS_COUNT);


 gpu_write(gpu, REG_A5XX_RBBM_PERFCTR_RBBM_SEL_0, 6);


 gpu_write(gpu, REG_A5XX_UCHE_CACHE_WAYS, 0x02);


 gpu_write(gpu, REG_A5XX_UCHE_TRAP_BASE_LO, 0xFFFF0000);
 gpu_write(gpu, REG_A5XX_UCHE_TRAP_BASE_HI, 0x0001FFFF);
 gpu_write(gpu, REG_A5XX_UCHE_WRITE_THRU_BASE_LO, 0xFFFF0000);
 gpu_write(gpu, REG_A5XX_UCHE_WRITE_THRU_BASE_HI, 0x0001FFFF);


 gpu_write(gpu, REG_A5XX_UCHE_GMEM_RANGE_MIN_LO, 0x00100000);
 gpu_write(gpu, REG_A5XX_UCHE_GMEM_RANGE_MIN_HI, 0x00000000);
 gpu_write(gpu, REG_A5XX_UCHE_GMEM_RANGE_MAX_LO,
  0x00100000 + adreno_gpu->gmem - 1);
 gpu_write(gpu, REG_A5XX_UCHE_GMEM_RANGE_MAX_HI, 0x00000000);

 gpu_write(gpu, REG_A5XX_CP_MEQ_THRESHOLDS, 0x40);
 if (adreno_is_a530(adreno_gpu))
  gpu_write(gpu, REG_A5XX_CP_MERCIU_SIZE, 0x40);
 if (adreno_is_a540(adreno_gpu))
  gpu_write(gpu, REG_A5XX_CP_MERCIU_SIZE, 0x400);
 gpu_write(gpu, REG_A5XX_CP_ROQ_THRESHOLDS_2, 0x80000060);
 gpu_write(gpu, REG_A5XX_CP_ROQ_THRESHOLDS_1, 0x40201B16);

 gpu_write(gpu, REG_A5XX_PC_DBG_ECO_CNTL, (0x400 << 11 | 0x300 << 22));

 if (adreno_gpu->info->quirks & ADRENO_QUIRK_TWO_PASS_USE_WFI)
  gpu_rmw(gpu, REG_A5XX_PC_DBG_ECO_CNTL, 0, (1 << 8));

 gpu_write(gpu, REG_A5XX_PC_DBG_ECO_CNTL, 0xc0200100);


 gpu_write(gpu, REG_A5XX_CP_CHICKEN_DBG, 0x02000000);


 gpu_write(gpu, REG_A5XX_RBBM_AHB_CNTL1, 0xA6FFFFFF);


 a5xx_set_hwcg(gpu, 1);

 gpu_write(gpu, REG_A5XX_RBBM_AHB_CNTL2, 0x0000003F);


 gpu_write(gpu, REG_A5XX_TPL1_MODE_CNTL, 2 << 7);
 gpu_write(gpu, REG_A5XX_RB_MODE_CNTL, 2 << 1);
 if (adreno_is_a540(adreno_gpu))
  gpu_write(gpu, REG_A5XX_UCHE_DBG_ECO_CNTL_2, 2);


 gpu_write(gpu, REG_A5XX_CP_PROTECT_CNTL, 0x00000007);


 gpu_write(gpu, REG_A5XX_CP_PROTECT(0), ADRENO_PROTECT_RW(0x04, 4));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(1), ADRENO_PROTECT_RW(0x08, 8));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(2), ADRENO_PROTECT_RW(0x10, 16));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(3), ADRENO_PROTECT_RW(0x20, 32));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(4), ADRENO_PROTECT_RW(0x40, 64));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(5), ADRENO_PROTECT_RW(0x80, 64));


 gpu_write(gpu, REG_A5XX_CP_PROTECT(6),
  ADRENO_PROTECT_RW(REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO,
   16));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(7),
  ADRENO_PROTECT_RW(REG_A5XX_RBBM_SECVID_TRUST_CNTL, 2));


 gpu_write(gpu, REG_A5XX_CP_PROTECT(8), ADRENO_PROTECT_RW(0x800, 64));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(9), ADRENO_PROTECT_RW(0x840, 8));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(10), ADRENO_PROTECT_RW(0x880, 32));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(11), ADRENO_PROTECT_RW(0xAA0, 1));


 gpu_write(gpu, REG_A5XX_CP_PROTECT(12), ADRENO_PROTECT_RW(0xCC0, 1));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(13), ADRENO_PROTECT_RW(0xCF0, 2));


 gpu_write(gpu, REG_A5XX_CP_PROTECT(14), ADRENO_PROTECT_RW(0xE68, 8));
 gpu_write(gpu, REG_A5XX_CP_PROTECT(15), ADRENO_PROTECT_RW(0xE70, 4));


 gpu_write(gpu, REG_A5XX_CP_PROTECT(16), ADRENO_PROTECT_RW(0xE80, 16));

 if (adreno_is_a530(adreno_gpu))
  gpu_write(gpu, REG_A5XX_CP_PROTECT(17),
   ADRENO_PROTECT_RW(0x10000, 0x8000));

 gpu_write(gpu, REG_A5XX_RBBM_SECVID_TSB_CNTL, 0);





 gpu_write64(gpu, REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO,
  REG_A5XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI, 0x00000000);
 gpu_write(gpu, REG_A5XX_RBBM_SECVID_TSB_TRUSTED_SIZE, 0x00000000);


 gpu_write(gpu, REG_A5XX_CP_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_VSC_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_GRAS_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_RB_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_PC_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_HLSQ_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_VFD_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_VPC_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_UCHE_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_SP_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_TPL1_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A5XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL, 0x1);






 if (adreno_gpu->info->quirks & ADRENO_QUIRK_LMLOADKILL_DISABLE) {
  gpu_rmw(gpu, REG_A5XX_VPC_DBG_ECO_CNTL, 0, BIT(23));
  gpu_rmw(gpu, REG_A5XX_HLSQ_DBG_ECO_CNTL, BIT(18), 0);
 }

 ret = adreno_hw_init(gpu);
 if (ret)
  return ret;

 a5xx_preempt_hw_init(gpu);

 a5xx_gpmu_ucode_init(gpu);

 ret = a5xx_ucode_init(gpu);
 if (ret)
  return ret;


 gpu_write(gpu, REG_A5XX_RBBM_INT_0_MASK, A5XX_INT_MASK);


 gpu_write(gpu, REG_A5XX_CP_PFP_ME_CNTL, 0);
 ret = a5xx_me_init(gpu);
 if (ret)
  return ret;

 ret = a5xx_power_init(gpu);
 if (ret)
  return ret;





 if (adreno_is_a530(adreno_gpu)) {
  OUT_PKT7(gpu->rb[0], CP_EVENT_WRITE, 1);
  OUT_RING(gpu->rb[0], 0x0F);

  gpu->funcs->flush(gpu, gpu->rb[0]);
  if (!a5xx_idle(gpu, gpu->rb[0]))
   return -EINVAL;
 }
 ret = a5xx_zap_shader_init(gpu);
 if (!ret) {
  OUT_PKT7(gpu->rb[0], CP_SET_SECURE_MODE, 1);
  OUT_RING(gpu->rb[0], 0x00000000);

  gpu->funcs->flush(gpu, gpu->rb[0]);
  if (!a5xx_idle(gpu, gpu->rb[0]))
   return -EINVAL;
 } else {

  dev_warn_once(gpu->dev->dev,
   "Zap shader not enabled - using SECVID_TRUST_CNTL instead\n");
  gpu_write(gpu, REG_A5XX_RBBM_SECVID_TRUST_CNTL, 0x0);
 }


 a5xx_preempt_start(gpu);

 return 0;
}
