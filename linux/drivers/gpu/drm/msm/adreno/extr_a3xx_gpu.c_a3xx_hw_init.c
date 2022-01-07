
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msm_gpu_perfcntr {int select_val; int select_reg; } ;
struct msm_gpu {int name; int num_perfcntrs; struct msm_gpu_perfcntr* perfcntrs; } ;
struct adreno_gpu {TYPE_1__** fw; } ;
struct a3xx_gpu {int ocmem_base; scalar_t__ ocmem_hdl; } ;
struct TYPE_2__ {int size; scalar_t__ data; } ;


 int A3XX_INT0_MASK ;
 size_t ADRENO_FW_PFP ;
 size_t ADRENO_FW_PM4 ;
 int AXXX_CP_DEBUG_DYNAMIC_CLK_DISABLE ;
 int AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE ;
 int AXXX_CP_QUEUE_THRESHOLDS_CSQ_IB1_START (int) ;
 int AXXX_CP_QUEUE_THRESHOLDS_CSQ_IB2_START (int) ;
 int AXXX_CP_QUEUE_THRESHOLDS_CSQ_ST_START (int) ;
 int BUG () ;
 int DBG (char*,int) ;
 int EINVAL ;
 int REG_A3XX_CP_PFP_UCODE_ADDR ;
 int REG_A3XX_CP_PFP_UCODE_DATA ;
 int REG_A3XX_CP_PROTECT (int) ;
 int REG_A3XX_CP_PROTECT_CTRL ;
 int REG_A3XX_RBBM_AHB_CTL0 ;
 int REG_A3XX_RBBM_AHB_CTL1 ;
 int REG_A3XX_RBBM_CLOCK_CTL ;
 int REG_A3XX_RBBM_GPR0_CTL ;
 int REG_A3XX_RBBM_GPU_BUSY_MASKED ;
 int REG_A3XX_RBBM_INTERFACE_HANG_INT_CTL ;
 int REG_A3XX_RBBM_INT_0_MASK ;
 int REG_A3XX_RBBM_PERFCTR_CTL ;
 int REG_A3XX_RBBM_RBBM_CTL ;
 int REG_A3XX_RBBM_SP_HYST_CNT ;
 int REG_A3XX_RBBM_WAIT_IDLE_CLOCKS_CTL ;
 int REG_A3XX_RB_GMEM_BASE_ADDR ;
 int REG_A3XX_UCHE_CACHE_MODE_CONTROL_REG ;
 int REG_A3XX_VBIF_ABIT_SORT ;
 int REG_A3XX_VBIF_ABIT_SORT_CONF ;
 int REG_A3XX_VBIF_ARB_CTL ;
 int REG_A3XX_VBIF_CLKON ;
 int REG_A3XX_VBIF_DDR_OUT_MAX_BURST ;
 int REG_A3XX_VBIF_GATE_OFF_WRREQ_EN ;
 int REG_A3XX_VBIF_IN_RD_LIM_CONF0 ;
 int REG_A3XX_VBIF_IN_RD_LIM_CONF1 ;
 int REG_A3XX_VBIF_IN_WR_LIM_CONF0 ;
 int REG_A3XX_VBIF_IN_WR_LIM_CONF1 ;
 int REG_A3XX_VBIF_OUT_AXI_AOOO ;
 int REG_A3XX_VBIF_OUT_AXI_AOOO_EN ;
 int REG_A3XX_VBIF_OUT_RD_LIM_CONF0 ;
 int REG_A3XX_VBIF_OUT_WR_LIM_CONF0 ;
 int REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB ;
 int REG_AXXX_CP_DEBUG ;
 int REG_AXXX_CP_ME_CNTL ;
 int REG_AXXX_CP_ME_RAM_DATA ;
 int REG_AXXX_CP_ME_RAM_WADDR ;
 int REG_AXXX_CP_QUEUE_THRESHOLDS ;
 scalar_t__ a3xx_me_init (struct msm_gpu*) ;
 int adreno_hw_init (struct msm_gpu*) ;
 scalar_t__ adreno_is_a305 (struct adreno_gpu*) ;
 scalar_t__ adreno_is_a306 (struct adreno_gpu*) ;
 scalar_t__ adreno_is_a320 (struct adreno_gpu*) ;
 scalar_t__ adreno_is_a330 (struct adreno_gpu*) ;
 scalar_t__ adreno_is_a330v2 (struct adreno_gpu*) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 struct a3xx_gpu* to_a3xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static int a3xx_hw_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a3xx_gpu *a3xx_gpu = to_a3xx_gpu(adreno_gpu);
 uint32_t *ptr, len;
 int i, ret;

 DBG("%s", gpu->name);

 if (adreno_is_a305(adreno_gpu)) {

  gpu_write(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF0, 0x10101010);
  gpu_write(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF1, 0x10101010);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_RD_LIM_CONF0, 0x10101010);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_WR_LIM_CONF0, 0x10101010);
  gpu_write(gpu, REG_A3XX_VBIF_DDR_OUT_MAX_BURST, 0x0000303);
  gpu_write(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF0, 0x10101010);
  gpu_write(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF1, 0x10101010);

  gpu_write(gpu, REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, 0x0000ff);

  gpu_write(gpu, REG_A3XX_VBIF_ARB_CTL, 0x00000030);

  gpu_write(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO_EN, 0x0000003c);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO, 0x003c003c);
 } else if (adreno_is_a306(adreno_gpu)) {
  gpu_write(gpu, REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB, 0x0003);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_RD_LIM_CONF0, 0x0000000a);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_WR_LIM_CONF0, 0x0000000a);
 } else if (adreno_is_a320(adreno_gpu)) {

  gpu_write(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF0, 0x10101010);
  gpu_write(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF1, 0x10101010);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_RD_LIM_CONF0, 0x10101010);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_WR_LIM_CONF0, 0x10101010);
  gpu_write(gpu, REG_A3XX_VBIF_DDR_OUT_MAX_BURST, 0x0000303);
  gpu_write(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF0, 0x10101010);
  gpu_write(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF1, 0x10101010);

  gpu_write(gpu, REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, 0x0000ff);

  gpu_write(gpu, REG_A3XX_VBIF_ARB_CTL, 0x00000030);

  gpu_write(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO_EN, 0x0000003c);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO, 0x003c003c);

  gpu_write(gpu, REG_A3XX_VBIF_ABIT_SORT, 0x000000ff);
  gpu_write(gpu, REG_A3XX_VBIF_ABIT_SORT_CONF, 0x000000a4);

 } else if (adreno_is_a330v2(adreno_gpu)) {






  gpu_write(gpu, REG_A3XX_VBIF_ABIT_SORT, 0x0001003f);
  gpu_write(gpu, REG_A3XX_VBIF_ABIT_SORT_CONF, 0x000000a4);

  gpu_write(gpu, REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, 0x00003f);
  gpu_write(gpu, REG_A3XX_VBIF_DDR_OUT_MAX_BURST, 0x0000303);

  gpu_write(gpu, REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB, 0x0003);

 } else if (adreno_is_a330(adreno_gpu)) {

  gpu_write(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF0, 0x18181818);
  gpu_write(gpu, REG_A3XX_VBIF_IN_RD_LIM_CONF1, 0x18181818);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_RD_LIM_CONF0, 0x18181818);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_WR_LIM_CONF0, 0x18181818);
  gpu_write(gpu, REG_A3XX_VBIF_DDR_OUT_MAX_BURST, 0x0000303);
  gpu_write(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF0, 0x18181818);
  gpu_write(gpu, REG_A3XX_VBIF_IN_WR_LIM_CONF1, 0x18181818);

  gpu_write(gpu, REG_A3XX_VBIF_GATE_OFF_WRREQ_EN, 0x00003f);

  gpu_write(gpu, REG_A3XX_VBIF_ARB_CTL, 0x00000030);

  gpu_write(gpu, REG_A3XX_VBIF_ROUND_ROBIN_QOS_ARB, 0x0001);

  gpu_write(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO_EN, 0x0000003f);
  gpu_write(gpu, REG_A3XX_VBIF_OUT_AXI_AOOO, 0x003f003f);

  gpu_write(gpu, REG_A3XX_VBIF_ABIT_SORT, 0x0001003f);
  gpu_write(gpu, REG_A3XX_VBIF_ABIT_SORT_CONF, 0x000000a4);



  gpu_write(gpu, REG_A3XX_VBIF_CLKON, 0x00000001);

 } else {
  BUG();
 }


 gpu_write(gpu, REG_A3XX_RBBM_GPU_BUSY_MASKED, 0xffffffff);


 gpu_write(gpu, REG_A3XX_RBBM_SP_HYST_CNT, 0x10);
 gpu_write(gpu, REG_A3XX_RBBM_WAIT_IDLE_CLOCKS_CTL, 0x10);




 gpu_write(gpu, REG_A3XX_RBBM_AHB_CTL0, 0x00000001);


 gpu_write(gpu, REG_A3XX_RBBM_AHB_CTL1, 0xa6ffffff);


 gpu_write(gpu, REG_A3XX_RBBM_RBBM_CTL, 0x00030000);




 gpu_write(gpu, REG_A3XX_RBBM_INTERFACE_HANG_INT_CTL, 0x00010fff);


 gpu_write(gpu, REG_A3XX_UCHE_CACHE_MODE_CONTROL_REG, 0x00000001);


 if (adreno_is_a306(adreno_gpu))
  gpu_write(gpu, REG_A3XX_RBBM_CLOCK_CTL, 0xaaaaaaaa);
 else if (adreno_is_a320(adreno_gpu))
  gpu_write(gpu, REG_A3XX_RBBM_CLOCK_CTL, 0xbfffffff);
 else if (adreno_is_a330v2(adreno_gpu))
  gpu_write(gpu, REG_A3XX_RBBM_CLOCK_CTL, 0xaaaaaaaa);
 else if (adreno_is_a330(adreno_gpu))
  gpu_write(gpu, REG_A3XX_RBBM_CLOCK_CTL, 0xbffcffff);

 if (adreno_is_a330v2(adreno_gpu))
  gpu_write(gpu, REG_A3XX_RBBM_GPR0_CTL, 0x05515455);
 else if (adreno_is_a330(adreno_gpu))
  gpu_write(gpu, REG_A3XX_RBBM_GPR0_CTL, 0x00000000);


 if (a3xx_gpu->ocmem_hdl) {
  gpu_write(gpu, REG_A3XX_RB_GMEM_BASE_ADDR,
   (unsigned int)(a3xx_gpu->ocmem_base >> 14));
 }


 gpu_write(gpu, REG_A3XX_RBBM_PERFCTR_CTL, 0x01);


 for (i = 0; i < gpu->num_perfcntrs; i++) {
  const struct msm_gpu_perfcntr *perfcntr = &gpu->perfcntrs[i];
  gpu_write(gpu, perfcntr->select_reg, perfcntr->select_val);
 }

 gpu_write(gpu, REG_A3XX_RBBM_INT_0_MASK, A3XX_INT0_MASK);

 ret = adreno_hw_init(gpu);
 if (ret)
  return ret;


 gpu_write(gpu, REG_A3XX_CP_PROTECT_CTRL, 0x00000007);


 gpu_write(gpu, REG_A3XX_CP_PROTECT(0), 0x63000040);
 gpu_write(gpu, REG_A3XX_CP_PROTECT(1), 0x62000080);
 gpu_write(gpu, REG_A3XX_CP_PROTECT(2), 0x600000cc);
 gpu_write(gpu, REG_A3XX_CP_PROTECT(3), 0x60000108);
 gpu_write(gpu, REG_A3XX_CP_PROTECT(4), 0x64000140);
 gpu_write(gpu, REG_A3XX_CP_PROTECT(5), 0x66000400);


 gpu_write(gpu, REG_A3XX_CP_PROTECT(6), 0x65000700);
 gpu_write(gpu, REG_A3XX_CP_PROTECT(7), 0x610007d8);
 gpu_write(gpu, REG_A3XX_CP_PROTECT(8), 0x620007e0);
 gpu_write(gpu, REG_A3XX_CP_PROTECT(9), 0x61001178);
 gpu_write(gpu, REG_A3XX_CP_PROTECT(10), 0x64001180);


 gpu_write(gpu, REG_A3XX_CP_PROTECT(11), 0x60003300);


 gpu_write(gpu, REG_A3XX_CP_PROTECT(12), 0x6b00c000);
 ptr = (uint32_t *)(adreno_gpu->fw[ADRENO_FW_PM4]->data);
 len = adreno_gpu->fw[ADRENO_FW_PM4]->size / 4;
 DBG("loading PM4 ucode version: %x", ptr[1]);

 gpu_write(gpu, REG_AXXX_CP_DEBUG,
   AXXX_CP_DEBUG_DYNAMIC_CLK_DISABLE |
   AXXX_CP_DEBUG_MIU_128BIT_WRITE_ENABLE);
 gpu_write(gpu, REG_AXXX_CP_ME_RAM_WADDR, 0);
 for (i = 1; i < len; i++)
  gpu_write(gpu, REG_AXXX_CP_ME_RAM_DATA, ptr[i]);


 ptr = (uint32_t *)(adreno_gpu->fw[ADRENO_FW_PFP]->data);
 len = adreno_gpu->fw[ADRENO_FW_PFP]->size / 4;
 DBG("loading PFP ucode version: %x", ptr[5]);

 gpu_write(gpu, REG_A3XX_CP_PFP_UCODE_ADDR, 0);
 for (i = 1; i < len; i++)
  gpu_write(gpu, REG_A3XX_CP_PFP_UCODE_DATA, ptr[i]);


 if (adreno_is_a305(adreno_gpu) || adreno_is_a306(adreno_gpu) ||
   adreno_is_a320(adreno_gpu)) {
  gpu_write(gpu, REG_AXXX_CP_QUEUE_THRESHOLDS,
    AXXX_CP_QUEUE_THRESHOLDS_CSQ_IB1_START(2) |
    AXXX_CP_QUEUE_THRESHOLDS_CSQ_IB2_START(6) |
    AXXX_CP_QUEUE_THRESHOLDS_CSQ_ST_START(14));
 } else if (adreno_is_a330(adreno_gpu)) {





  gpu_write(gpu, REG_AXXX_CP_QUEUE_THRESHOLDS, 0x003e2008);
 }


 gpu_write(gpu, REG_AXXX_CP_ME_CNTL, 0);

 return a3xx_me_init(gpu) ? 0 : -EINVAL;
}
