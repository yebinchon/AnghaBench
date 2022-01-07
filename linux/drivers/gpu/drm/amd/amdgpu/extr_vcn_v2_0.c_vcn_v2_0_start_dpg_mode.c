
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {void* wptr; void* gpu_addr; int ring_size; } ;
struct TYPE_4__ {int* dpg_sram_curr_addr; scalar_t__ dpg_sram_cpu_addr; int dpg_sram_gpu_addr; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;
struct TYPE_3__ {struct amdgpu_ring ring_dec; } ;


 int RB_BLKSZ ;
 int RB_BUFSZ ;
 int RB_NO_FETCH ;
 int RB_NO_UPDATE ;
 int RB_RPTR_WR_EN ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 void* RREG32_SOC15 (int ,int ,int ) ;
 int SOC15_DPG_MODE_OFFSET_2_0 (int ,int ,int ) ;
 int UVD ;
 int UVD_LMI_CTRL2__RE_OFLD_MIF_WR_REQ_NUM__SHIFT ;
 int UVD_LMI_CTRL__CRC_RESET_MASK ;
 int UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK ;
 int UVD_LMI_CTRL__MASK_MC_URGENT_MASK ;
 int UVD_LMI_CTRL__REQ_MODE_MASK ;
 int UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK ;
 int UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK ;
 int UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT ;
 int UVD_MASTINT_EN__VCPU_EN_MASK ;
 int UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT ;
 int UVD_MPC_SET_MUXA0__VARA_1__SHIFT ;
 int UVD_MPC_SET_MUXA0__VARA_2__SHIFT ;
 int UVD_MPC_SET_MUXA0__VARA_3__SHIFT ;
 int UVD_MPC_SET_MUXA0__VARA_4__SHIFT ;
 int UVD_MPC_SET_MUXB0__VARB_1__SHIFT ;
 int UVD_MPC_SET_MUXB0__VARB_2__SHIFT ;
 int UVD_MPC_SET_MUXB0__VARB_3__SHIFT ;
 int UVD_MPC_SET_MUXB0__VARB_4__SHIFT ;
 int UVD_MPC_SET_MUX__SET_0__SHIFT ;
 int UVD_MPC_SET_MUX__SET_1__SHIFT ;
 int UVD_MPC_SET_MUX__SET_2__SHIFT ;
 int UVD_POWER_STATUS__UVD_PG_EN_MASK ;
 int UVD_POWER_STATUS__UVD_PG_MODE_MASK ;
 int UVD_RBC_RB_CNTL ;
 int UVD_VCPU_CNTL__CLK_EN_MASK ;
 int UVD_VCPU_CNTL__MIF_WR_LOW_THRESHOLD_BP_MASK ;
 int UVD_VCPU_CNTL__PRB_TIMEOUT_VAL__SHIFT ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int WREG32_SOC15_DPG_MODE_2_0 (int ,int,int ,int) ;
 int lower_32_bits (void*) ;
 int mmUVD_LMI_CTRL ;
 int mmUVD_LMI_CTRL2 ;
 int mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH ;
 int mmUVD_LMI_RBC_RB_64BIT_BAR_LOW ;
 int mmUVD_MASTINT_EN ;
 int mmUVD_MPC_CNTL ;
 int mmUVD_MPC_SET_MUX ;
 int mmUVD_MPC_SET_MUXA0 ;
 int mmUVD_MPC_SET_MUXB0 ;
 int mmUVD_POWER_STATUS ;
 int mmUVD_RBC_RB_CNTL ;
 int mmUVD_RBC_RB_RPTR ;
 int mmUVD_RBC_RB_RPTR_ADDR ;
 int mmUVD_RBC_RB_WPTR ;
 int mmUVD_RBC_RB_WPTR_CNTL ;
 int mmUVD_RBC_XX_IB_REG_CHECK ;
 int mmUVD_REG_XX_MASK ;
 int mmUVD_SCRATCH2 ;
 int mmUVD_SOFT_RESET ;
 int mmUVD_VCPU_CNTL ;
 int order_base_2 (int ) ;
 int psp_update_vcn_sram (struct amdgpu_device*,int ,int ,int) ;
 int upper_32_bits (void*) ;
 int vcn_v2_0_clock_gating_dpg_mode (struct amdgpu_device*,int ,int) ;
 int vcn_v2_0_enable_static_power_gating (struct amdgpu_device*) ;
 int vcn_v2_0_mc_resume_dpg_mode (struct amdgpu_device*,int) ;

__attribute__((used)) static int vcn_v2_0_start_dpg_mode(struct amdgpu_device *adev, bool indirect)
{
 struct amdgpu_ring *ring = &adev->vcn.inst->ring_dec;
 uint32_t rb_bufsz, tmp;

 vcn_v2_0_enable_static_power_gating(adev);


 tmp = RREG32_SOC15(UVD, 0, mmUVD_POWER_STATUS);
 tmp |= UVD_POWER_STATUS__UVD_PG_MODE_MASK;
 tmp |= UVD_POWER_STATUS__UVD_PG_EN_MASK;
 WREG32_SOC15(UVD, 0, mmUVD_POWER_STATUS, tmp);

 if (indirect)
  adev->vcn.dpg_sram_curr_addr = (uint32_t*)adev->vcn.dpg_sram_cpu_addr;


 vcn_v2_0_clock_gating_dpg_mode(adev, 0, indirect);


 tmp = (0xFF << UVD_VCPU_CNTL__PRB_TIMEOUT_VAL__SHIFT);
 tmp |= UVD_VCPU_CNTL__CLK_EN_MASK;
 tmp |= UVD_VCPU_CNTL__MIF_WR_LOW_THRESHOLD_BP_MASK;
 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_VCPU_CNTL), tmp, 0, indirect);


 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_MASTINT_EN), 0, 0, indirect);


 tmp = (UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK |
  UVD_LMI_CTRL__REQ_MODE_MASK |
  UVD_LMI_CTRL__CRC_RESET_MASK |
  UVD_LMI_CTRL__MASK_MC_URGENT_MASK |
  UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK |
  UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK |
  (8 << UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT) |
  0x00100000L);
 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_LMI_CTRL), tmp, 0, indirect);

 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_MPC_CNTL),
  0x2 << UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT, 0, indirect);

 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_MPC_SET_MUXA0),
  ((0x1 << UVD_MPC_SET_MUXA0__VARA_1__SHIFT) |
   (0x2 << UVD_MPC_SET_MUXA0__VARA_2__SHIFT) |
   (0x3 << UVD_MPC_SET_MUXA0__VARA_3__SHIFT) |
   (0x4 << UVD_MPC_SET_MUXA0__VARA_4__SHIFT)), 0, indirect);

 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_MPC_SET_MUXB0),
  ((0x1 << UVD_MPC_SET_MUXB0__VARB_1__SHIFT) |
   (0x2 << UVD_MPC_SET_MUXB0__VARB_2__SHIFT) |
   (0x3 << UVD_MPC_SET_MUXB0__VARB_3__SHIFT) |
   (0x4 << UVD_MPC_SET_MUXB0__VARB_4__SHIFT)), 0, indirect);

 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_MPC_SET_MUX),
  ((0x0 << UVD_MPC_SET_MUX__SET_0__SHIFT) |
   (0x1 << UVD_MPC_SET_MUX__SET_1__SHIFT) |
   (0x2 << UVD_MPC_SET_MUX__SET_2__SHIFT)), 0, indirect);

 vcn_v2_0_mc_resume_dpg_mode(adev, indirect);

 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_REG_XX_MASK), 0x10, 0, indirect);
 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_RBC_XX_IB_REG_CHECK), 0x3, 0, indirect);


 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_SOFT_RESET), 0, 0, indirect);


 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_LMI_CTRL2),
  0x1F << UVD_LMI_CTRL2__RE_OFLD_MIF_WR_REQ_NUM__SHIFT, 0, indirect);


 WREG32_SOC15_DPG_MODE_2_0(SOC15_DPG_MODE_OFFSET_2_0(
  UVD, 0, mmUVD_MASTINT_EN),
  UVD_MASTINT_EN__VCPU_EN_MASK, 0, indirect);

 if (indirect)
  psp_update_vcn_sram(adev, 0, adev->vcn.dpg_sram_gpu_addr,
        (uint32_t)((uintptr_t)adev->vcn.dpg_sram_curr_addr -
            (uintptr_t)adev->vcn.dpg_sram_cpu_addr));


 rb_bufsz = order_base_2(ring->ring_size);
 tmp = REG_SET_FIELD(0, UVD_RBC_RB_CNTL, RB_BUFSZ, rb_bufsz);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_BLKSZ, 1);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_NO_FETCH, 1);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_NO_UPDATE, 1);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_RPTR_WR_EN, 1);
 WREG32_SOC15(UVD, 0, mmUVD_RBC_RB_CNTL, tmp);


 WREG32_SOC15(UVD, 0, mmUVD_RBC_RB_WPTR_CNTL, 0);


 WREG32_SOC15(UVD, 0, mmUVD_RBC_RB_RPTR_ADDR,
  (upper_32_bits(ring->gpu_addr) >> 2));


 WREG32_SOC15(UVD, 0, mmUVD_LMI_RBC_RB_64BIT_BAR_LOW,
  lower_32_bits(ring->gpu_addr));
 WREG32_SOC15(UVD, 0, mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH,
  upper_32_bits(ring->gpu_addr));


 WREG32_SOC15(UVD, 0, mmUVD_RBC_RB_RPTR, 0);

 WREG32_SOC15(UVD, 0, mmUVD_SCRATCH2, 0);

 ring->wptr = RREG32_SOC15(UVD, 0, mmUVD_RBC_RB_RPTR);
 WREG32_SOC15(UVD, 0, mmUVD_RBC_RB_WPTR,
  lower_32_bits(ring->wptr));

 return 0;
}
