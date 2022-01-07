
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu {TYPE_1__* dev; int * rb; } ;
struct adreno_gpu {int gmem; } ;
struct a6xx_gpu {int gmu; int cur_ring; } ;
struct TYPE_2__ {int dev; } ;


 int A6XX_INT_MASK ;
 int A6XX_PROTECT_RDONLY (int,int) ;
 int A6XX_PROTECT_RW (int,int) ;
 int CP_SET_SECURE_MODE ;
 int EINVAL ;
 int GMU_OOB_BOOT_SLUMBER ;
 int GMU_OOB_GPU_SET ;
 int OUT_PKT7 (int ,int ,int) ;
 int OUT_RING (int ,int) ;
 int PERF_CP_ALWAYS_COUNT ;
 int REG_A6XX_CP_ADDR_MODE_CNTL ;
 int REG_A6XX_CP_AHB_CNTL ;
 int REG_A6XX_CP_MEM_POOL_SIZE ;
 int REG_A6XX_CP_PERFCTR_CP_SEL_0 ;
 int REG_A6XX_CP_PROTECT (int) ;
 int REG_A6XX_CP_PROTECT_CNTL ;
 int REG_A6XX_CP_ROQ_THRESHOLDS_1 ;
 int REG_A6XX_CP_ROQ_THRESHOLDS_2 ;
 int REG_A6XX_CP_SQE_CNTL ;
 int REG_A6XX_GRAS_ADDR_MODE_CNTL ;
 int REG_A6XX_HLSQ_ADDR_MODE_CNTL ;
 int REG_A6XX_PC_ADDR_MODE_CNTL ;
 int REG_A6XX_PC_DBG_ECO_CNTL ;
 int REG_A6XX_RBBM_INTERFACE_HANG_INT_CNTL ;
 int REG_A6XX_RBBM_INT_0_MASK ;
 int REG_A6XX_RBBM_PERFCTR_CNTL ;
 int REG_A6XX_RBBM_PERFCTR_GPU_BUSY_MASKED ;
 int REG_A6XX_RBBM_SECVID_TRUST_CNTL ;
 int REG_A6XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL ;
 int REG_A6XX_RBBM_SECVID_TSB_CNTL ;
 int REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI ;
 int REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO ;
 int REG_A6XX_RBBM_SECVID_TSB_TRUSTED_SIZE ;
 int REG_A6XX_RBBM_VBIF_CLIENT_QOS_CNTL ;
 int REG_A6XX_RB_ADDR_MODE_CNTL ;
 int REG_A6XX_RB_NC_MODE_CNTL ;
 int REG_A6XX_SP_ADDR_MODE_CNTL ;
 int REG_A6XX_SP_NC_MODE_CNTL ;
 int REG_A6XX_TPL1_ADDR_MODE_CNTL ;
 int REG_A6XX_TPL1_NC_MODE_CNTL ;
 int REG_A6XX_UCHE_ADDR_MODE_CNTL ;
 int REG_A6XX_UCHE_CACHE_WAYS ;
 int REG_A6XX_UCHE_CLIENT_PF ;
 int REG_A6XX_UCHE_FILTER_CNTL ;
 int REG_A6XX_UCHE_GMEM_RANGE_MAX_HI ;
 int REG_A6XX_UCHE_GMEM_RANGE_MAX_LO ;
 int REG_A6XX_UCHE_GMEM_RANGE_MIN_HI ;
 int REG_A6XX_UCHE_GMEM_RANGE_MIN_LO ;
 int REG_A6XX_UCHE_MODE_CNTL ;
 int REG_A6XX_UCHE_TRAP_BASE_HI ;
 int REG_A6XX_UCHE_TRAP_BASE_LO ;
 int REG_A6XX_UCHE_WRITE_RANGE_MAX_HI ;
 int REG_A6XX_UCHE_WRITE_RANGE_MAX_LO ;
 int REG_A6XX_UCHE_WRITE_THRU_BASE_HI ;
 int REG_A6XX_UCHE_WRITE_THRU_BASE_LO ;
 int REG_A6XX_VBIF_GATE_OFF_WRREQ_EN ;
 int REG_A6XX_VFD_ADDR_MODE_CNTL ;
 int REG_A6XX_VPC_ADDR_MODE_CNTL ;
 int REG_A6XX_VSC_ADDR_MODE_CNTL ;
 int a6xx_cp_init (struct msm_gpu*) ;
 int a6xx_flush (struct msm_gpu*,int ) ;
 int a6xx_gmu_clear_oob (int *,int ) ;
 int a6xx_gmu_set_oob (int *,int ) ;
 int a6xx_idle (struct msm_gpu*,int ) ;
 int a6xx_set_hwcg (struct msm_gpu*,int) ;
 int a6xx_ucode_init (struct msm_gpu*) ;
 int a6xx_zap_shader_init (struct msm_gpu*) ;
 int adreno_hw_init (struct msm_gpu*) ;
 int dev_warn_once (int ,char*) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int gpu_write64 (struct msm_gpu*,int ,int ,int) ;
 struct a6xx_gpu* to_a6xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int a6xx_hw_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
 int ret;


 a6xx_gmu_set_oob(&a6xx_gpu->gmu, GMU_OOB_GPU_SET);

 gpu_write(gpu, REG_A6XX_RBBM_SECVID_TSB_CNTL, 0);






 gpu_write64(gpu, REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_LO,
  REG_A6XX_RBBM_SECVID_TSB_TRUSTED_BASE_HI, 0x00000000);
 gpu_write(gpu, REG_A6XX_RBBM_SECVID_TSB_TRUSTED_SIZE, 0x00000000);


 gpu_write(gpu, REG_A6XX_CP_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_VSC_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_GRAS_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_RB_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_PC_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_HLSQ_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_VFD_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_VPC_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_UCHE_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_SP_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_TPL1_ADDR_MODE_CNTL, 0x1);
 gpu_write(gpu, REG_A6XX_RBBM_SECVID_TSB_ADDR_MODE_CNTL, 0x1);


 a6xx_set_hwcg(gpu, 1);


 gpu_write(gpu, REG_A6XX_VBIF_GATE_OFF_WRREQ_EN, 0x00000009);
 gpu_write(gpu, REG_A6XX_RBBM_VBIF_CLIENT_QOS_CNTL, 0x3);


 gpu_write(gpu, REG_A6XX_RBBM_PERFCTR_GPU_BUSY_MASKED, 0xffffffff);


 gpu_write(gpu, REG_A6XX_UCHE_WRITE_RANGE_MAX_LO, 0xffffffc0);
 gpu_write(gpu, REG_A6XX_UCHE_WRITE_RANGE_MAX_HI, 0x0001ffff);
 gpu_write(gpu, REG_A6XX_UCHE_TRAP_BASE_LO, 0xfffff000);
 gpu_write(gpu, REG_A6XX_UCHE_TRAP_BASE_HI, 0x0001ffff);
 gpu_write(gpu, REG_A6XX_UCHE_WRITE_THRU_BASE_LO, 0xfffff000);
 gpu_write(gpu, REG_A6XX_UCHE_WRITE_THRU_BASE_HI, 0x0001ffff);


 gpu_write64(gpu, REG_A6XX_UCHE_GMEM_RANGE_MIN_LO,
  REG_A6XX_UCHE_GMEM_RANGE_MIN_HI, 0x00100000);

 gpu_write64(gpu, REG_A6XX_UCHE_GMEM_RANGE_MAX_LO,
  REG_A6XX_UCHE_GMEM_RANGE_MAX_HI,
  0x00100000 + adreno_gpu->gmem - 1);

 gpu_write(gpu, REG_A6XX_UCHE_FILTER_CNTL, 0x804);
 gpu_write(gpu, REG_A6XX_UCHE_CACHE_WAYS, 0x4);

 gpu_write(gpu, REG_A6XX_CP_ROQ_THRESHOLDS_2, 0x010000c0);
 gpu_write(gpu, REG_A6XX_CP_ROQ_THRESHOLDS_1, 0x8040362c);


 gpu_write(gpu, REG_A6XX_CP_MEM_POOL_SIZE, 128);


 gpu_write(gpu, REG_A6XX_PC_DBG_ECO_CNTL, (0x300 << 11));


 gpu_write(gpu, REG_A6XX_CP_AHB_CNTL, 0x1);


 gpu_write(gpu, REG_A6XX_RBBM_PERFCTR_CNTL, 0x1);


 gpu_write(gpu, REG_A6XX_CP_PERFCTR_CP_SEL_0, PERF_CP_ALWAYS_COUNT);

 gpu_write(gpu, REG_A6XX_RB_NC_MODE_CNTL, 2 << 1);
 gpu_write(gpu, REG_A6XX_TPL1_NC_MODE_CNTL, 2 << 1);
 gpu_write(gpu, REG_A6XX_SP_NC_MODE_CNTL, 2 << 1);
 gpu_write(gpu, REG_A6XX_UCHE_MODE_CNTL, 2 << 21);


 gpu_write(gpu, REG_A6XX_RBBM_INTERFACE_HANG_INT_CNTL,
  (1 << 30) | 0x1fffff);

 gpu_write(gpu, REG_A6XX_UCHE_CLIENT_PF, 1);


 gpu_write(gpu, REG_A6XX_CP_PROTECT_CNTL, 0x00000003);

 gpu_write(gpu, REG_A6XX_CP_PROTECT(0),
  A6XX_PROTECT_RDONLY(0x600, 0x51));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(1), A6XX_PROTECT_RW(0xae50, 0x2));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(2), A6XX_PROTECT_RW(0x9624, 0x13));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(3), A6XX_PROTECT_RW(0x8630, 0x8));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(4), A6XX_PROTECT_RW(0x9e70, 0x1));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(5), A6XX_PROTECT_RW(0x9e78, 0x187));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(6), A6XX_PROTECT_RW(0xf000, 0x810));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(7),
  A6XX_PROTECT_RDONLY(0xfc00, 0x3));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(8), A6XX_PROTECT_RW(0x50e, 0x0));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(9), A6XX_PROTECT_RDONLY(0x50f, 0x0));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(10), A6XX_PROTECT_RW(0x510, 0x0));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(11),
  A6XX_PROTECT_RDONLY(0x0, 0x4f9));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(12),
  A6XX_PROTECT_RDONLY(0x501, 0xa));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(13),
  A6XX_PROTECT_RDONLY(0x511, 0x44));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(14), A6XX_PROTECT_RW(0xe00, 0xe));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(15), A6XX_PROTECT_RW(0x8e00, 0x0));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(16), A6XX_PROTECT_RW(0x8e50, 0xf));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(17), A6XX_PROTECT_RW(0xbe02, 0x0));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(18),
  A6XX_PROTECT_RW(0xbe20, 0x11f3));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(19), A6XX_PROTECT_RW(0x800, 0x82));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(20), A6XX_PROTECT_RW(0x8a0, 0x8));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(21), A6XX_PROTECT_RW(0x8ab, 0x19));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(22), A6XX_PROTECT_RW(0x900, 0x4d));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(23), A6XX_PROTECT_RW(0x98d, 0x76));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(24),
   A6XX_PROTECT_RDONLY(0x980, 0x4));
 gpu_write(gpu, REG_A6XX_CP_PROTECT(25), A6XX_PROTECT_RW(0xa630, 0x0));


 gpu_write(gpu, REG_A6XX_RBBM_INT_0_MASK, A6XX_INT_MASK);

 ret = adreno_hw_init(gpu);
 if (ret)
  goto out;

 ret = a6xx_ucode_init(gpu);
 if (ret)
  goto out;


 a6xx_gpu->cur_ring = gpu->rb[0];


 gpu_write(gpu, REG_A6XX_CP_SQE_CNTL, 1);

 ret = a6xx_cp_init(gpu);
 if (ret)
  goto out;
 ret = a6xx_zap_shader_init(gpu);
 if (!ret) {
  OUT_PKT7(gpu->rb[0], CP_SET_SECURE_MODE, 1);
  OUT_RING(gpu->rb[0], 0x00000000);

  a6xx_flush(gpu, gpu->rb[0]);
  if (!a6xx_idle(gpu, gpu->rb[0]))
   return -EINVAL;
 } else {

  dev_warn_once(gpu->dev->dev,
   "Zap shader not enabled - using SECVID_TRUST_CNTL instead\n");
  gpu_write(gpu, REG_A6XX_RBBM_SECVID_TRUST_CNTL, 0x0);
  ret = 0;
 }

out:




 a6xx_gmu_clear_oob(&a6xx_gpu->gmu, GMU_OOB_GPU_SET);


 a6xx_gmu_clear_oob(&a6xx_gpu->gmu, GMU_OOB_BOOT_SLUMBER);

 return ret;
}
