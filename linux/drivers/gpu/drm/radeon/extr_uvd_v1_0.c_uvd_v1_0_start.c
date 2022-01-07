
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct radeon_ring {int gpu_addr; int wptr; int ring_size; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 int CSM_SOFT_RESET ;
 int CXW_SOFT_RESET ;
 int DRM_ERROR (char*) ;
 int LBSI_SOFT_RESET ;
 int LMI_SOFT_RESET ;
 int LMI_UMC_SOFT_RESET ;
 size_t R600_RING_TYPE_UVD_INDEX ;
 int RBC_SOFT_RESET ;
 void* RREG32 (int ) ;
 int SOFT_RESET_UVD ;
 int SRBM_SOFT_RESET ;
 int TAP_SOFT_RESET ;
 int UVD_CGC_GATE ;
 int UVD_LMI_CTRL ;
 int UVD_LMI_CTRL2 ;
 int UVD_LMI_EXT40_ADDR ;
 int UVD_LMI_SWAP_CNTL ;
 int UVD_MASTINT_EN ;
 int UVD_MPC_SET_ALU ;
 int UVD_MPC_SET_MUX ;
 int UVD_MPC_SET_MUXA0 ;
 int UVD_MPC_SET_MUXA1 ;
 int UVD_MPC_SET_MUXB0 ;
 int UVD_MPC_SET_MUXB1 ;
 int UVD_MP_SWAP_CNTL ;
 int UVD_RBC_RB_BASE ;
 int UVD_RBC_RB_CNTL ;
 int UVD_RBC_RB_RPTR ;
 int UVD_RBC_RB_WPTR ;
 int UVD_RBC_RB_WPTR_CNTL ;
 int UVD_RB_ARB_CTRL ;
 int UVD_SOFT_RESET ;
 int UVD_STATUS ;
 int UVD_VCPU_CNTL ;
 int VCPU_SOFT_RESET ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int,int) ;
 int mdelay (int) ;
 int order_base_2 (int ) ;
 int upper_32_bits (int) ;

int uvd_v1_0_start(struct radeon_device *rdev)
{
 struct radeon_ring *ring = &rdev->ring[R600_RING_TYPE_UVD_INDEX];
 uint32_t rb_bufsz;
 int i, j, r;


 u32 lmi_swap_cntl = 0;
 u32 mp_swap_cntl = 0;


 WREG32(UVD_CGC_GATE, 0);


 WREG32_P(UVD_MASTINT_EN, 0, ~(1 << 1));


 WREG32_P(UVD_LMI_CTRL2, 1 << 8, ~(1 << 8));
 WREG32_P(UVD_RB_ARB_CTRL, 1 << 3, ~(1 << 3));
 mdelay(1);


 WREG32(UVD_SOFT_RESET, LMI_SOFT_RESET | VCPU_SOFT_RESET |
        LBSI_SOFT_RESET | RBC_SOFT_RESET | CSM_SOFT_RESET |
        CXW_SOFT_RESET | TAP_SOFT_RESET | LMI_UMC_SOFT_RESET);
 mdelay(5);


 WREG32_P(SRBM_SOFT_RESET, 0, ~SOFT_RESET_UVD);
 mdelay(5);


 WREG32(UVD_LMI_CTRL, 0x40 | (1 << 8) | (1 << 13) |
        (1 << 21) | (1 << 9) | (1 << 20));






 WREG32(UVD_LMI_SWAP_CNTL, lmi_swap_cntl);
 WREG32(UVD_MP_SWAP_CNTL, mp_swap_cntl);

 WREG32(UVD_MPC_SET_MUXA0, 0x40c2040);
 WREG32(UVD_MPC_SET_MUXA1, 0x0);
 WREG32(UVD_MPC_SET_MUXB0, 0x40c2040);
 WREG32(UVD_MPC_SET_MUXB1, 0x0);
 WREG32(UVD_MPC_SET_ALU, 0);
 WREG32(UVD_MPC_SET_MUX, 0x88);


 WREG32(UVD_SOFT_RESET, VCPU_SOFT_RESET);
 mdelay(5);


 WREG32(UVD_VCPU_CNTL, 1 << 9);


 WREG32_P(UVD_LMI_CTRL2, 0, ~(1 << 8));

 WREG32_P(UVD_RB_ARB_CTRL, 0, ~(1 << 3));


 WREG32(UVD_SOFT_RESET, 0);
 mdelay(10);

 for (i = 0; i < 10; ++i) {
  uint32_t status;
  for (j = 0; j < 100; ++j) {
   status = RREG32(UVD_STATUS);
   if (status & 2)
    break;
   mdelay(10);
  }
  r = 0;
  if (status & 2)
   break;

  DRM_ERROR("UVD not responding, trying to reset the VCPU!!!\n");
  WREG32_P(UVD_SOFT_RESET, VCPU_SOFT_RESET, ~VCPU_SOFT_RESET);
  mdelay(10);
  WREG32_P(UVD_SOFT_RESET, 0, ~VCPU_SOFT_RESET);
  mdelay(10);
  r = -1;
 }

 if (r) {
  DRM_ERROR("UVD not responding, giving up!!!\n");
  return r;
 }


 WREG32_P(UVD_MASTINT_EN, 3<<1, ~(3 << 1));


 WREG32(UVD_RBC_RB_CNTL, 0x11010101);


 WREG32(UVD_RBC_RB_WPTR_CNTL, 0);


 WREG32(UVD_LMI_EXT40_ADDR, upper_32_bits(ring->gpu_addr) |
       (0x7 << 16) | (0x1 << 31));


 WREG32(UVD_RBC_RB_RPTR, 0x0);

 ring->wptr = RREG32(UVD_RBC_RB_RPTR);
 WREG32(UVD_RBC_RB_WPTR, ring->wptr);


 WREG32(UVD_RBC_RB_BASE, ring->gpu_addr);


 rb_bufsz = order_base_2(ring->ring_size);
 rb_bufsz = (0x1 << 8) | rb_bufsz;
 WREG32_P(UVD_RBC_RB_CNTL, rb_bufsz, ~0x11f1f);

 return 0;
}
