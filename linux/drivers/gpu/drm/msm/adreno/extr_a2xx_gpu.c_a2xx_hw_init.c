
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct msm_gpu {int name; TYPE_1__* aspace; } ;
struct adreno_gpu {int gmem; TYPE_2__** fw; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int size; scalar_t__ data; } ;
struct TYPE_3__ {int mmu; } ;


 int A2XX_MH_ARBITER_CONFIG_CP_CLNT_ENABLE ;
 int A2XX_MH_ARBITER_CONFIG_IN_FLIGHT_LIMIT (int) ;
 int A2XX_MH_ARBITER_CONFIG_IN_FLIGHT_LIMIT_ENABLE ;
 int A2XX_MH_ARBITER_CONFIG_L1_ARB_ENABLE ;
 int A2XX_MH_ARBITER_CONFIG_L1_ARB_HOLD_ENABLE ;
 int A2XX_MH_ARBITER_CONFIG_PAGE_SIZE (int) ;
 int A2XX_MH_ARBITER_CONFIG_PA_CLNT_ENABLE ;
 int A2XX_MH_ARBITER_CONFIG_RB_CLNT_ENABLE ;
 int A2XX_MH_ARBITER_CONFIG_SAME_PAGE_LIMIT (int) ;
 int A2XX_MH_ARBITER_CONFIG_TC_ARB_HOLD_ENABLE ;
 int A2XX_MH_ARBITER_CONFIG_TC_CLNT_ENABLE ;
 int A2XX_MH_ARBITER_CONFIG_TC_REORDER_ENABLE ;
 int A2XX_MH_ARBITER_CONFIG_VGT_CLNT_ENABLE ;
 int A2XX_MH_INTERRUPT_MASK_AXI_READ_ERROR ;
 int A2XX_MH_INTERRUPT_MASK_AXI_WRITE_ERROR ;
 int A2XX_MH_INTERRUPT_MASK_MMU_PAGE_FAULT ;
 int A2XX_MH_MMU_CONFIG_CP_R0_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_CONFIG_CP_R1_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_CONFIG_CP_R2_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_CONFIG_CP_R3_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_CONFIG_CP_R4_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_CONFIG_CP_W_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_CONFIG_MMU_ENABLE ;
 int A2XX_MH_MMU_CONFIG_PA_W_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_CONFIG_RB_W_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_CONFIG_TC_R_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_CONFIG_VGT_R0_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_CONFIG_VGT_R1_CLNT_BEHAVIOR (int ) ;
 int A2XX_MH_MMU_INVALIDATE_INVALIDATE_ALL ;
 int A2XX_MH_MMU_INVALIDATE_INVALIDATE_TC ;
 int A2XX_MH_MMU_VA_RANGE_NUM_64KB_REGIONS (int) ;
 int A2XX_RBBM_INT_CNTL_RDERR_INT_MASK ;
 size_t ADRENO_FW_PFP ;
 size_t ADRENO_FW_PM4 ;
 int AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE ;
 int AXXX_CP_INT_CNTL_IB1_INT_MASK ;
 int AXXX_CP_INT_CNTL_IB_ERROR_MASK ;
 int AXXX_CP_INT_CNTL_OPCODE_ERROR_MASK ;
 int AXXX_CP_INT_CNTL_PROTECTED_MODE_ERROR_MASK ;
 int AXXX_CP_INT_CNTL_RB_INT_MASK ;
 int AXXX_CP_INT_CNTL_RESERVED_BIT_ERROR_MASK ;
 int AXXX_CP_INT_CNTL_T0_PACKET_IN_IB_MASK ;
 int AXXX_CP_ME_CNTL_HALT ;
 int BEH_TRAN_RNG ;
 int DBG (char*,int) ;
 int EINVAL ;
 int REG_A2XX_CP_PFP_UCODE_ADDR ;
 int REG_A2XX_CP_PFP_UCODE_DATA ;
 int REG_A2XX_MH_ARBITER_CONFIG ;
 int REG_A2XX_MH_CLNT_INTF_CTRL_CONFIG1 ;
 int REG_A2XX_MH_INTERRUPT_MASK ;
 int REG_A2XX_MH_MMU_CONFIG ;
 int REG_A2XX_MH_MMU_INVALIDATE ;
 int REG_A2XX_MH_MMU_MPU_BASE ;
 int REG_A2XX_MH_MMU_MPU_END ;
 int REG_A2XX_MH_MMU_PT_BASE ;
 int REG_A2XX_MH_MMU_TRAN_ERROR ;
 int REG_A2XX_MH_MMU_VA_RANGE ;
 int REG_A2XX_RBBM_CNTL ;
 int REG_A2XX_RBBM_DEBUG ;
 int REG_A2XX_RBBM_INT_CNTL ;
 int REG_A2XX_RBBM_PM_OVERRIDE1 ;
 int REG_A2XX_RBBM_PM_OVERRIDE2 ;
 int REG_A2XX_RBBM_SOFT_RESET ;
 int REG_A2XX_RB_EDRAM_INFO ;
 int REG_A2XX_SQ_FLOW_CONTROL ;
 int REG_A2XX_SQ_INT_CNTL ;
 int REG_A2XX_SQ_PS_PROGRAM ;
 int REG_A2XX_SQ_VS_PROGRAM ;
 int REG_AXXX_CP_DEBUG ;
 int REG_AXXX_CP_INT_CNTL ;
 int REG_AXXX_CP_ME_CNTL ;
 int REG_AXXX_CP_ME_RAM_DATA ;
 int REG_AXXX_CP_ME_RAM_WADDR ;
 int REG_AXXX_CP_QUEUE_THRESHOLDS ;
 int SZ_16K ;
 int SZ_16M ;
 scalar_t__ a2xx_me_init (struct msm_gpu*) ;
 int adreno_hw_init (struct msm_gpu*) ;
 int adreno_is_a20x (struct adreno_gpu*) ;
 scalar_t__ adreno_is_a225 (struct adreno_gpu*) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int msleep (int) ;
 int msm_gpummu_params (int ,int*,int*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int a2xx_hw_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 dma_addr_t pt_base, tran_error;
 uint32_t *ptr, len;
 int i, ret;

 msm_gpummu_params(gpu->aspace->mmu, &pt_base, &tran_error);

 DBG("%s", gpu->name);


 gpu_write(gpu, REG_AXXX_CP_ME_CNTL, AXXX_CP_ME_CNTL_HALT);

 gpu_write(gpu, REG_A2XX_RBBM_PM_OVERRIDE1, 0xfffffffe);
 gpu_write(gpu, REG_A2XX_RBBM_PM_OVERRIDE2, 0xffffffff);


 gpu_write(gpu, REG_A2XX_RBBM_SOFT_RESET, 0xffffffff);
 msleep(30);
 gpu_write(gpu, REG_A2XX_RBBM_SOFT_RESET, 0x00000000);

 if (adreno_is_a225(adreno_gpu))
  gpu_write(gpu, REG_A2XX_SQ_FLOW_CONTROL, 0x18000000);


 gpu_write(gpu, REG_A2XX_RBBM_CNTL, 0x00004442);


 gpu_write(gpu, REG_A2XX_MH_MMU_MPU_BASE, 0x00000000);
 gpu_write(gpu, REG_A2XX_MH_MMU_MPU_END, 0xfffff000);

 gpu_write(gpu, REG_A2XX_MH_MMU_CONFIG, A2XX_MH_MMU_CONFIG_MMU_ENABLE |
  A2XX_MH_MMU_CONFIG_RB_W_CLNT_BEHAVIOR(BEH_TRAN_RNG) |
  A2XX_MH_MMU_CONFIG_CP_W_CLNT_BEHAVIOR(BEH_TRAN_RNG) |
  A2XX_MH_MMU_CONFIG_CP_R0_CLNT_BEHAVIOR(BEH_TRAN_RNG) |
  A2XX_MH_MMU_CONFIG_CP_R1_CLNT_BEHAVIOR(BEH_TRAN_RNG) |
  A2XX_MH_MMU_CONFIG_CP_R2_CLNT_BEHAVIOR(BEH_TRAN_RNG) |
  A2XX_MH_MMU_CONFIG_CP_R3_CLNT_BEHAVIOR(BEH_TRAN_RNG) |
  A2XX_MH_MMU_CONFIG_CP_R4_CLNT_BEHAVIOR(BEH_TRAN_RNG) |
  A2XX_MH_MMU_CONFIG_VGT_R0_CLNT_BEHAVIOR(BEH_TRAN_RNG) |
  A2XX_MH_MMU_CONFIG_VGT_R1_CLNT_BEHAVIOR(BEH_TRAN_RNG) |
  A2XX_MH_MMU_CONFIG_TC_R_CLNT_BEHAVIOR(BEH_TRAN_RNG) |
  A2XX_MH_MMU_CONFIG_PA_W_CLNT_BEHAVIOR(BEH_TRAN_RNG));


 gpu_write(gpu, REG_A2XX_MH_MMU_VA_RANGE, SZ_16M |
  A2XX_MH_MMU_VA_RANGE_NUM_64KB_REGIONS(0xfff));

 gpu_write(gpu, REG_A2XX_MH_MMU_PT_BASE, pt_base);
 gpu_write(gpu, REG_A2XX_MH_MMU_TRAN_ERROR, tran_error);

 gpu_write(gpu, REG_A2XX_MH_MMU_INVALIDATE,
  A2XX_MH_MMU_INVALIDATE_INVALIDATE_ALL |
  A2XX_MH_MMU_INVALIDATE_INVALIDATE_TC);

 gpu_write(gpu, REG_A2XX_MH_ARBITER_CONFIG,
  A2XX_MH_ARBITER_CONFIG_SAME_PAGE_LIMIT(16) |
  A2XX_MH_ARBITER_CONFIG_L1_ARB_ENABLE |
  A2XX_MH_ARBITER_CONFIG_L1_ARB_HOLD_ENABLE |
  A2XX_MH_ARBITER_CONFIG_PAGE_SIZE(1) |
  A2XX_MH_ARBITER_CONFIG_TC_REORDER_ENABLE |
  A2XX_MH_ARBITER_CONFIG_TC_ARB_HOLD_ENABLE |
  A2XX_MH_ARBITER_CONFIG_IN_FLIGHT_LIMIT_ENABLE |
  A2XX_MH_ARBITER_CONFIG_IN_FLIGHT_LIMIT(8) |
  A2XX_MH_ARBITER_CONFIG_CP_CLNT_ENABLE |
  A2XX_MH_ARBITER_CONFIG_VGT_CLNT_ENABLE |
  A2XX_MH_ARBITER_CONFIG_TC_CLNT_ENABLE |
  A2XX_MH_ARBITER_CONFIG_RB_CLNT_ENABLE |
  A2XX_MH_ARBITER_CONFIG_PA_CLNT_ENABLE);
 if (!adreno_is_a20x(adreno_gpu))
  gpu_write(gpu, REG_A2XX_MH_CLNT_INTF_CTRL_CONFIG1, 0x00032f07);

 gpu_write(gpu, REG_A2XX_SQ_VS_PROGRAM, 0x00000000);
 gpu_write(gpu, REG_A2XX_SQ_PS_PROGRAM, 0x00000000);

 gpu_write(gpu, REG_A2XX_RBBM_PM_OVERRIDE1, 0);
 gpu_write(gpu, REG_A2XX_RBBM_PM_OVERRIDE2, 0);


 gpu_write(gpu, REG_A2XX_RBBM_DEBUG, 0x00080000);

 gpu_write(gpu, REG_A2XX_RBBM_INT_CNTL,
  A2XX_RBBM_INT_CNTL_RDERR_INT_MASK);
 gpu_write(gpu, REG_AXXX_CP_INT_CNTL,
  AXXX_CP_INT_CNTL_T0_PACKET_IN_IB_MASK |
  AXXX_CP_INT_CNTL_OPCODE_ERROR_MASK |
  AXXX_CP_INT_CNTL_PROTECTED_MODE_ERROR_MASK |
  AXXX_CP_INT_CNTL_RESERVED_BIT_ERROR_MASK |
  AXXX_CP_INT_CNTL_IB_ERROR_MASK |
  AXXX_CP_INT_CNTL_IB1_INT_MASK |
  AXXX_CP_INT_CNTL_RB_INT_MASK);
 gpu_write(gpu, REG_A2XX_SQ_INT_CNTL, 0);
 gpu_write(gpu, REG_A2XX_MH_INTERRUPT_MASK,
  A2XX_MH_INTERRUPT_MASK_AXI_READ_ERROR |
  A2XX_MH_INTERRUPT_MASK_AXI_WRITE_ERROR |
  A2XX_MH_INTERRUPT_MASK_MMU_PAGE_FAULT);

 for (i = 3; i <= 5; i++)
  if ((SZ_16K << i) == adreno_gpu->gmem)
   break;
 gpu_write(gpu, REG_A2XX_RB_EDRAM_INFO, i);

 ret = adreno_hw_init(gpu);
 if (ret)
  return ret;
 ptr = (uint32_t *)(adreno_gpu->fw[ADRENO_FW_PM4]->data);
 len = adreno_gpu->fw[ADRENO_FW_PM4]->size / 4;
 DBG("loading PM4 ucode version: %x", ptr[1]);

 gpu_write(gpu, REG_AXXX_CP_DEBUG,
   AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE);
 gpu_write(gpu, REG_AXXX_CP_ME_RAM_WADDR, 0);
 for (i = 1; i < len; i++)
  gpu_write(gpu, REG_AXXX_CP_ME_RAM_DATA, ptr[i]);


 ptr = (uint32_t *)(adreno_gpu->fw[ADRENO_FW_PFP]->data);
 len = adreno_gpu->fw[ADRENO_FW_PFP]->size / 4;
 DBG("loading PFP ucode version: %x", ptr[5]);

 gpu_write(gpu, REG_A2XX_CP_PFP_UCODE_ADDR, 0);
 for (i = 1; i < len; i++)
  gpu_write(gpu, REG_A2XX_CP_PFP_UCODE_DATA, ptr[i]);

 gpu_write(gpu, REG_AXXX_CP_QUEUE_THRESHOLDS, 0x000C0804);


 gpu_write(gpu, REG_AXXX_CP_ME_CNTL, 0);

 return a2xx_me_init(gpu) ? 0 : -EINVAL;
}
