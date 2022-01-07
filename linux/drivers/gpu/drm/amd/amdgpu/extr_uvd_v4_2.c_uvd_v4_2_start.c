
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct amdgpu_ring {int gpu_addr; int ring_size; void* wptr; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;


 int DRM_ERROR (char*) ;
 void* RREG32 (int ) ;
 int RREG32_UVD_CTX (int ) ;
 int SRBM_SOFT_RESET__SOFT_RESET_UVD_MASK ;
 int UVD_SOFT_RESET__LMI_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK ;
 int UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int,int) ;
 int WREG32_UVD_CTX (int ,int) ;
 int ixUVD_LMI_CACHE_CTRL ;
 int lower_32_bits (void*) ;
 int mdelay (int) ;
 int mmSRBM_SOFT_RESET ;
 int mmUVD_CGC_GATE ;
 int mmUVD_LMI_CTRL ;
 int mmUVD_LMI_CTRL2 ;
 int mmUVD_LMI_EXT40_ADDR ;
 int mmUVD_LMI_SWAP_CNTL ;
 int mmUVD_MASTINT_EN ;
 int mmUVD_MPC_CNTL ;
 int mmUVD_MPC_SET_ALU ;
 int mmUVD_MPC_SET_MUX ;
 int mmUVD_MPC_SET_MUXA0 ;
 int mmUVD_MPC_SET_MUXA1 ;
 int mmUVD_MPC_SET_MUXB0 ;
 int mmUVD_MPC_SET_MUXB1 ;
 int mmUVD_MP_SWAP_CNTL ;
 int mmUVD_RBC_RB_BASE ;
 int mmUVD_RBC_RB_CNTL ;
 int mmUVD_RBC_RB_RPTR ;
 int mmUVD_RBC_RB_WPTR ;
 int mmUVD_RBC_RB_WPTR_CNTL ;
 int mmUVD_SOFT_RESET ;
 int mmUVD_STATUS ;
 int mmUVD_VCPU_CNTL ;
 int order_base_2 (int ) ;
 int upper_32_bits (int) ;
 int uvd_v4_2_mc_resume (struct amdgpu_device*) ;
 int uvd_v4_2_set_dcm (struct amdgpu_device*,int) ;

__attribute__((used)) static int uvd_v4_2_start(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring = &adev->uvd.inst->ring;
 uint32_t rb_bufsz;
 int i, j, r;
 u32 tmp;

 u32 lmi_swap_cntl = 0;
 u32 mp_swap_cntl = 0;


 WREG32_P(mmUVD_STATUS, 1<<2, ~(1<<2));

 uvd_v4_2_set_dcm(adev, 1);
 WREG32(mmUVD_CGC_GATE, 0);


 WREG32_P(mmSRBM_SOFT_RESET, 0, ~SRBM_SOFT_RESET__SOFT_RESET_UVD_MASK);
 mdelay(5);


 WREG32(mmUVD_VCPU_CNTL, 1 << 9);


 WREG32_P(mmUVD_MASTINT_EN, 0, ~(1 << 1));






 WREG32(mmUVD_LMI_SWAP_CNTL, lmi_swap_cntl);
 WREG32(mmUVD_MP_SWAP_CNTL, mp_swap_cntl);

 WREG32(mmUVD_LMI_CTRL, 0x203108);

 tmp = RREG32(mmUVD_MPC_CNTL);
 WREG32(mmUVD_MPC_CNTL, tmp | 0x10);

 WREG32(mmUVD_MPC_SET_MUXA0, 0x40c2040);
 WREG32(mmUVD_MPC_SET_MUXA1, 0x0);
 WREG32(mmUVD_MPC_SET_MUXB0, 0x40c2040);
 WREG32(mmUVD_MPC_SET_MUXB1, 0x0);
 WREG32(mmUVD_MPC_SET_ALU, 0);
 WREG32(mmUVD_MPC_SET_MUX, 0x88);

 uvd_v4_2_mc_resume(adev);

 tmp = RREG32_UVD_CTX(ixUVD_LMI_CACHE_CTRL);
 WREG32_UVD_CTX(ixUVD_LMI_CACHE_CTRL, tmp & (~0x10));


 WREG32_P(mmUVD_LMI_CTRL2, 0, ~(1 << 8));

 WREG32_P(mmUVD_SOFT_RESET, 0, ~UVD_SOFT_RESET__LMI_SOFT_RESET_MASK);

 WREG32_P(mmUVD_SOFT_RESET, 0, ~UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK);

 WREG32_P(mmUVD_SOFT_RESET, 0, ~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);

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
  WREG32_P(mmUVD_SOFT_RESET, UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK,
    ~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);
  mdelay(10);
  WREG32_P(mmUVD_SOFT_RESET, 0, ~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);
  mdelay(10);
  r = -1;
 }

 if (r) {
  DRM_ERROR("UVD not responding, giving up!!!\n");
  return r;
 }


 WREG32_P(mmUVD_MASTINT_EN, 3<<1, ~(3 << 1));

 WREG32_P(mmUVD_STATUS, 0, ~(1<<2));


 WREG32(mmUVD_RBC_RB_CNTL, 0x11010101);


 WREG32(mmUVD_RBC_RB_WPTR_CNTL, 0);


 WREG32(mmUVD_LMI_EXT40_ADDR, upper_32_bits(ring->gpu_addr) |
       (0x7 << 16) | (0x1 << 31));


 WREG32(mmUVD_RBC_RB_RPTR, 0x0);

 ring->wptr = RREG32(mmUVD_RBC_RB_RPTR);
 WREG32(mmUVD_RBC_RB_WPTR, lower_32_bits(ring->wptr));


 WREG32(mmUVD_RBC_RB_BASE, ring->gpu_addr);


 rb_bufsz = order_base_2(ring->ring_size);
 rb_bufsz = (0x1 << 8) | rb_bufsz;
 WREG32_P(mmUVD_RBC_RB_CNTL, rb_bufsz, ~0x11f1f);

 return 0;
}
