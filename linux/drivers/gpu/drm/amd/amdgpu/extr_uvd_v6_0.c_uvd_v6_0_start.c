
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {int ring_size; int gpu_addr; int wptr; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {struct amdgpu_ring* ring_enc; struct amdgpu_ring ring; } ;


 int DRM_ERROR (char*) ;
 int RB_BLKSZ ;
 int RB_BUFSZ ;
 int RB_NO_FETCH ;
 int RB_NO_UPDATE ;
 int RB_RPTR_WR_EN ;
 int RB_WPTR_POLL_EN ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 void* RREG32 (int ) ;
 int SOFT_RESET_UVD ;
 int SRBM_SOFT_RESET ;
 int STALL_ARB_UMC ;
 int UVD_LMI_CTRL2 ;
 int UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK ;
 int UVD_LMI_CTRL__DISABLE_ON_FWV_FAIL_MASK ;
 int UVD_LMI_CTRL__REQ_MODE_MASK ;
 int UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK ;
 int UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK ;
 int UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT ;
 int UVD_MASTINT_EN ;
 int UVD_MASTINT_EN__SYS_EN_MASK ;
 int UVD_MASTINT_EN__VCPU_EN_MASK ;
 int UVD_POWER_STATUS__UVD_PG_MODE_MASK ;
 int UVD_RBC_RB_CNTL ;
 int UVD_SOFT_RESET ;
 int UVD_SOFT_RESET__CSM_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__CXW_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__LBSI_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__LMI_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__RBC_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__TAP_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK ;
 int UVD_STATUS__VCPU_REPORT__SHIFT ;
 int UVD_VCPU_CNTL__CLK_EN_MASK ;
 int VCPU_EN ;
 int VCPU_SOFT_RESET ;
 int WREG32 (int ,int) ;
 int WREG32_FIELD (int ,int ,int) ;
 int WREG32_P (int ,int,int) ;
 int lower_32_bits (int) ;
 int mdelay (int) ;
 int mmUVD_LMI_CTRL ;
 int mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH ;
 int mmUVD_LMI_RBC_RB_64BIT_BAR_LOW ;
 int mmUVD_LMI_SWAP_CNTL ;
 int mmUVD_MASTINT_EN ;
 int mmUVD_MPC_SET_ALU ;
 int mmUVD_MPC_SET_MUX ;
 int mmUVD_MPC_SET_MUXA0 ;
 int mmUVD_MPC_SET_MUXA1 ;
 int mmUVD_MPC_SET_MUXB0 ;
 int mmUVD_MPC_SET_MUXB1 ;
 int mmUVD_MP_SWAP_CNTL ;
 int mmUVD_POWER_STATUS ;
 int mmUVD_RBC_RB_CNTL ;
 int mmUVD_RBC_RB_RPTR ;
 int mmUVD_RBC_RB_RPTR_ADDR ;
 int mmUVD_RBC_RB_WPTR ;
 int mmUVD_RBC_RB_WPTR_CNTL ;
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
 scalar_t__ uvd_v6_0_enc_support (struct amdgpu_device*) ;
 int uvd_v6_0_mc_resume (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v6_0_start(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring = &adev->uvd.inst->ring;
 uint32_t rb_bufsz, tmp;
 uint32_t lmi_swap_cntl;
 uint32_t mp_swap_cntl;
 int i, j, r;


 WREG32_P(mmUVD_POWER_STATUS, 0, ~UVD_POWER_STATUS__UVD_PG_MODE_MASK);


 lmi_swap_cntl = 0;
 mp_swap_cntl = 0;

 uvd_v6_0_mc_resume(adev);


 WREG32_FIELD(UVD_MASTINT_EN, VCPU_EN, 0);


 WREG32_FIELD(UVD_LMI_CTRL2, STALL_ARB_UMC, 1);
 mdelay(1);


 WREG32(mmUVD_SOFT_RESET,
  UVD_SOFT_RESET__LMI_SOFT_RESET_MASK |
  UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK |
  UVD_SOFT_RESET__LBSI_SOFT_RESET_MASK |
  UVD_SOFT_RESET__RBC_SOFT_RESET_MASK |
  UVD_SOFT_RESET__CSM_SOFT_RESET_MASK |
  UVD_SOFT_RESET__CXW_SOFT_RESET_MASK |
  UVD_SOFT_RESET__TAP_SOFT_RESET_MASK |
  UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK);
 mdelay(5);


 WREG32_FIELD(SRBM_SOFT_RESET, SOFT_RESET_UVD, 0);
 mdelay(5);


 WREG32(mmUVD_LMI_CTRL,
  (0x40 << UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT) |
  UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK |
  UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK |
  UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK |
  UVD_LMI_CTRL__REQ_MODE_MASK |
  UVD_LMI_CTRL__DISABLE_ON_FWV_FAIL_MASK);






 WREG32(mmUVD_LMI_SWAP_CNTL, lmi_swap_cntl);
 WREG32(mmUVD_MP_SWAP_CNTL, mp_swap_cntl);

 WREG32(mmUVD_MPC_SET_MUXA0, 0x40c2040);
 WREG32(mmUVD_MPC_SET_MUXA1, 0x0);
 WREG32(mmUVD_MPC_SET_MUXB0, 0x40c2040);
 WREG32(mmUVD_MPC_SET_MUXB1, 0x0);
 WREG32(mmUVD_MPC_SET_ALU, 0);
 WREG32(mmUVD_MPC_SET_MUX, 0x88);


 WREG32(mmUVD_SOFT_RESET, UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);
 mdelay(5);


 WREG32(mmUVD_VCPU_CNTL, UVD_VCPU_CNTL__CLK_EN_MASK);


 WREG32_FIELD(UVD_LMI_CTRL2, STALL_ARB_UMC, 0);


 WREG32(mmUVD_SOFT_RESET, 0);
 mdelay(10);

 for (i = 0; i < 10; ++i) {
  uint32_t status;

  for (j = 0; j < 100; ++j) {
   status = RREG32(mmUVD_STATUS);
   if (status & 2)
    break;
   mdelay(10);
  }
  r = 0;
  if (status & 2)
   break;

  DRM_ERROR("UVD not responding, trying to reset the VCPU!!!\n");
  WREG32_FIELD(UVD_SOFT_RESET, VCPU_SOFT_RESET, 1);
  mdelay(10);
  WREG32_FIELD(UVD_SOFT_RESET, VCPU_SOFT_RESET, 0);
  mdelay(10);
  r = -1;
 }

 if (r) {
  DRM_ERROR("UVD not responding, giving up!!!\n");
  return r;
 }

 WREG32_P(mmUVD_MASTINT_EN,
  (UVD_MASTINT_EN__VCPU_EN_MASK|UVD_MASTINT_EN__SYS_EN_MASK),
  ~(UVD_MASTINT_EN__VCPU_EN_MASK|UVD_MASTINT_EN__SYS_EN_MASK));


 WREG32_P(mmUVD_STATUS, 0, ~(2 << UVD_STATUS__VCPU_REPORT__SHIFT));


 rb_bufsz = order_base_2(ring->ring_size);
 tmp = REG_SET_FIELD(0, UVD_RBC_RB_CNTL, RB_BUFSZ, rb_bufsz);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_BLKSZ, 1);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_NO_FETCH, 1);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_WPTR_POLL_EN, 0);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_NO_UPDATE, 1);
 tmp = REG_SET_FIELD(tmp, UVD_RBC_RB_CNTL, RB_RPTR_WR_EN, 1);
 WREG32(mmUVD_RBC_RB_CNTL, tmp);


 WREG32(mmUVD_RBC_RB_WPTR_CNTL, 0);


 WREG32(mmUVD_RBC_RB_RPTR_ADDR, (upper_32_bits(ring->gpu_addr) >> 2));


 WREG32(mmUVD_LMI_RBC_RB_64BIT_BAR_LOW,
   lower_32_bits(ring->gpu_addr));
 WREG32(mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH,
   upper_32_bits(ring->gpu_addr));


 WREG32(mmUVD_RBC_RB_RPTR, 0);

 ring->wptr = RREG32(mmUVD_RBC_RB_RPTR);
 WREG32(mmUVD_RBC_RB_WPTR, lower_32_bits(ring->wptr));

 WREG32_FIELD(UVD_RBC_RB_CNTL, RB_NO_FETCH, 0);

 if (uvd_v6_0_enc_support(adev)) {
  ring = &adev->uvd.inst->ring_enc[0];
  WREG32(mmUVD_RB_RPTR, lower_32_bits(ring->wptr));
  WREG32(mmUVD_RB_WPTR, lower_32_bits(ring->wptr));
  WREG32(mmUVD_RB_BASE_LO, ring->gpu_addr);
  WREG32(mmUVD_RB_BASE_HI, upper_32_bits(ring->gpu_addr));
  WREG32(mmUVD_RB_SIZE, ring->ring_size / 4);

  ring = &adev->uvd.inst->ring_enc[1];
  WREG32(mmUVD_RB_RPTR2, lower_32_bits(ring->wptr));
  WREG32(mmUVD_RB_WPTR2, lower_32_bits(ring->wptr));
  WREG32(mmUVD_RB_BASE_LO2, ring->gpu_addr);
  WREG32(mmUVD_RB_BASE_HI2, upper_32_bits(ring->gpu_addr));
  WREG32(mmUVD_RB_SIZE2, ring->ring_size / 4);
 }

 return 0;
}
