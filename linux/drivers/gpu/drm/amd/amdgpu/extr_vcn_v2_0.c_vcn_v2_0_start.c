
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {int ring_size; int gpu_addr; int wptr; } ;
struct TYPE_6__ {TYPE_2__* inst; int indirect_sram; } ;
struct TYPE_4__ {scalar_t__ dpm_enabled; } ;
struct amdgpu_device {int pg_flags; TYPE_3__ vcn; TYPE_1__ pm; } ;
struct TYPE_5__ {struct amdgpu_ring* ring_enc; struct amdgpu_ring ring_dec; } ;


 int AMD_PG_SUPPORT_VCN_DPG ;
 int DRM_ERROR (char*) ;
 int RB_BLKSZ ;
 int RB_BUFSZ ;
 int RB_NO_FETCH ;
 int RB_NO_UPDATE ;
 int RB_RPTR_WR_EN ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int UVD_LMI_CTRL2__STALL_ARB_UMC_MASK ;
 int UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK ;
 int UVD_LMI_CTRL__MASK_MC_URGENT_MASK ;
 int UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK ;
 int UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK ;
 int UVD_MASTINT_EN__VCPU_EN_MASK ;
 int UVD_MPC_CNTL__REPLACEMENT_MODE_MASK ;
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
 int UVD_RBC_RB_CNTL ;
 int UVD_SOFT_RESET__LMI_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK ;
 int UVD_STATUS__UVD_BUSY ;
 int UVD_STATUS__VCPU_REPORT__SHIFT ;
 int UVD_VCPU_CNTL__CLK_EN_MASK ;
 int VCN ;
 int WREG32_P (int ,int,int) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int amdgpu_dpm_enable_uvd (struct amdgpu_device*,int) ;
 int jpeg_v2_0_start (struct amdgpu_device*) ;
 int lower_32_bits (int) ;
 int mdelay (int) ;
 int mmUVD_LMI_CTRL ;
 int mmUVD_LMI_CTRL2 ;
 int mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH ;
 int mmUVD_LMI_RBC_RB_64BIT_BAR_LOW ;
 int mmUVD_LMI_RBC_RB_VMID ;
 int mmUVD_LMI_SWAP_CNTL ;
 int mmUVD_MASTINT_EN ;
 int mmUVD_MPC_CNTL ;
 int mmUVD_MPC_SET_MUX ;
 int mmUVD_MPC_SET_MUXA0 ;
 int mmUVD_MPC_SET_MUXB0 ;
 int mmUVD_RBC_RB_CNTL ;
 int mmUVD_RBC_RB_RPTR ;
 int mmUVD_RBC_RB_WPTR ;
 int mmUVD_RB_BASE_HI ;
 int mmUVD_RB_BASE_HI2 ;
 int mmUVD_RB_BASE_LO ;
 int mmUVD_RB_BASE_LO2 ;
 int mmUVD_RB_RPTR ;
 int mmUVD_RB_RPTR2 ;
 int mmUVD_RB_SIZE ;
 int mmUVD_RB_SIZE2 ;
 int mmUVD_RB_WPTR ;
 int mmUVD_RB_WPTR2 ;
 int mmUVD_SOFT_RESET ;
 int mmUVD_STATUS ;
 int mmUVD_VCPU_CNTL ;
 int order_base_2 (int) ;
 int upper_32_bits (int) ;
 int vcn_v2_0_disable_clock_gating (struct amdgpu_device*) ;
 int vcn_v2_0_disable_static_power_gating (struct amdgpu_device*) ;
 int vcn_v2_0_mc_resume (struct amdgpu_device*) ;
 int vcn_v2_0_start_dpg_mode (struct amdgpu_device*,int ) ;

__attribute__((used)) static int vcn_v2_0_start(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring = &adev->vcn.inst->ring_dec;
 uint32_t rb_bufsz, tmp;
 uint32_t lmi_swap_cntl;
 int i, j, r;

 if (adev->pm.dpm_enabled)
  amdgpu_dpm_enable_uvd(adev, 1);

 if (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG) {
  r = vcn_v2_0_start_dpg_mode(adev, adev->vcn.indirect_sram);
  if (r)
   return r;
  goto jpeg;
 }

 vcn_v2_0_disable_static_power_gating(adev);


 tmp = RREG32_SOC15(UVD, 0, mmUVD_STATUS) | UVD_STATUS__UVD_BUSY;
 WREG32_SOC15(UVD, 0, mmUVD_STATUS, tmp);


 vcn_v2_0_disable_clock_gating(adev);


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_VCPU_CNTL),
  UVD_VCPU_CNTL__CLK_EN_MASK, ~UVD_VCPU_CNTL__CLK_EN_MASK);


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_MASTINT_EN), 0,
  ~UVD_MASTINT_EN__VCPU_EN_MASK);


 tmp = RREG32_SOC15(UVD, 0, mmUVD_LMI_CTRL);
 WREG32_SOC15(UVD, 0, mmUVD_LMI_CTRL, tmp |
  UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK |
  UVD_LMI_CTRL__MASK_MC_URGENT_MASK |
  UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK |
  UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK);


 tmp = RREG32_SOC15(UVD, 0, mmUVD_MPC_CNTL);
 tmp &= ~UVD_MPC_CNTL__REPLACEMENT_MODE_MASK;
 tmp |= 0x2 << UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT;
 WREG32_SOC15(VCN, 0, mmUVD_MPC_CNTL, tmp);


 WREG32_SOC15(UVD, 0, mmUVD_MPC_SET_MUXA0,
  ((0x1 << UVD_MPC_SET_MUXA0__VARA_1__SHIFT) |
  (0x2 << UVD_MPC_SET_MUXA0__VARA_2__SHIFT) |
  (0x3 << UVD_MPC_SET_MUXA0__VARA_3__SHIFT) |
  (0x4 << UVD_MPC_SET_MUXA0__VARA_4__SHIFT)));


 WREG32_SOC15(UVD, 0, mmUVD_MPC_SET_MUXB0,
  ((0x1 << UVD_MPC_SET_MUXB0__VARB_1__SHIFT) |
  (0x2 << UVD_MPC_SET_MUXB0__VARB_2__SHIFT) |
  (0x3 << UVD_MPC_SET_MUXB0__VARB_3__SHIFT) |
  (0x4 << UVD_MPC_SET_MUXB0__VARB_4__SHIFT)));


 WREG32_SOC15(UVD, 0, mmUVD_MPC_SET_MUX,
  ((0x0 << UVD_MPC_SET_MUX__SET_0__SHIFT) |
  (0x1 << UVD_MPC_SET_MUX__SET_1__SHIFT) |
  (0x2 << UVD_MPC_SET_MUX__SET_2__SHIFT)));

 vcn_v2_0_mc_resume(adev);


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_SOFT_RESET), 0,
  ~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_LMI_CTRL2), 0,
  ~UVD_LMI_CTRL2__STALL_ARB_UMC_MASK);

 tmp = RREG32_SOC15(VCN, 0, mmUVD_SOFT_RESET);
 tmp &= ~UVD_SOFT_RESET__LMI_SOFT_RESET_MASK;
 tmp &= ~UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK;
 WREG32_SOC15(VCN, 0, mmUVD_SOFT_RESET, tmp);


 lmi_swap_cntl = 0;




 WREG32_SOC15(UVD, 0, mmUVD_LMI_SWAP_CNTL, lmi_swap_cntl);

 for (i = 0; i < 10; ++i) {
  uint32_t status;

  for (j = 0; j < 100; ++j) {
   status = RREG32_SOC15(UVD, 0, mmUVD_STATUS);
   if (status & 2)
    break;
   mdelay(10);
  }
  r = 0;
  if (status & 2)
   break;

  DRM_ERROR("VCN decode not responding, trying to reset the VCPU!!!\n");
  WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_SOFT_RESET),
   UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK,
   ~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);
  mdelay(10);
  WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_SOFT_RESET), 0,
   ~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);
  mdelay(10);
  r = -1;
 }

 if (r) {
  DRM_ERROR("VCN decode not responding, giving up!!!\n");
  return r;
 }


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_MASTINT_EN),
  UVD_MASTINT_EN__VCPU_EN_MASK,
  ~UVD_MASTINT_EN__VCPU_EN_MASK);


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_STATUS), 0,
  ~(2 << UVD_STATUS__VCPU_REPORT__SHIFT));

 WREG32_SOC15(UVD, 0, mmUVD_LMI_RBC_RB_VMID, 0);


 rb_bufsz = order_base_2(ring->ring_size);
 tmp = REG_SET_FIELD(0, UVD_RBC_RB_CNTL, RB_BUFSZ, rb_bufsz);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_BLKSZ, 1);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_NO_FETCH, 1);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_NO_UPDATE, 1);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_RPTR_WR_EN, 1);
 WREG32_SOC15(UVD, 0, mmUVD_RBC_RB_CNTL, tmp);


 WREG32_SOC15(UVD, 0, mmUVD_LMI_RBC_RB_64BIT_BAR_LOW,
  lower_32_bits(ring->gpu_addr));
 WREG32_SOC15(UVD, 0, mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH,
  upper_32_bits(ring->gpu_addr));


 WREG32_SOC15(UVD, 0, mmUVD_RBC_RB_RPTR, 0);

 ring->wptr = RREG32_SOC15(UVD, 0, mmUVD_RBC_RB_RPTR);
 WREG32_SOC15(UVD, 0, mmUVD_RBC_RB_WPTR,
   lower_32_bits(ring->wptr));

 ring = &adev->vcn.inst->ring_enc[0];
 WREG32_SOC15(UVD, 0, mmUVD_RB_RPTR, lower_32_bits(ring->wptr));
 WREG32_SOC15(UVD, 0, mmUVD_RB_WPTR, lower_32_bits(ring->wptr));
 WREG32_SOC15(UVD, 0, mmUVD_RB_BASE_LO, ring->gpu_addr);
 WREG32_SOC15(UVD, 0, mmUVD_RB_BASE_HI, upper_32_bits(ring->gpu_addr));
 WREG32_SOC15(UVD, 0, mmUVD_RB_SIZE, ring->ring_size / 4);

 ring = &adev->vcn.inst->ring_enc[1];
 WREG32_SOC15(UVD, 0, mmUVD_RB_RPTR2, lower_32_bits(ring->wptr));
 WREG32_SOC15(UVD, 0, mmUVD_RB_WPTR2, lower_32_bits(ring->wptr));
 WREG32_SOC15(UVD, 0, mmUVD_RB_BASE_LO2, ring->gpu_addr);
 WREG32_SOC15(UVD, 0, mmUVD_RB_BASE_HI2, upper_32_bits(ring->gpu_addr));
 WREG32_SOC15(UVD, 0, mmUVD_RB_SIZE2, ring->ring_size / 4);

jpeg:
 r = jpeg_v2_0_start(adev);

 return r;
}
