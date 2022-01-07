
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {int ring_size; void* wptr; int gpu_addr; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;
struct TYPE_3__ {struct amdgpu_ring ring_jpeg; } ;


 int DRM_ERROR (char*) ;
 int JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT ;
 int JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT ;
 int JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT ;
 int JPEG_CGC_GATE__JMCIF_MASK ;
 int JPEG_CGC_GATE__JPEG2_DEC_MASK ;
 int JPEG_CGC_GATE__JPEG_DEC_MASK ;
 int JPEG_CGC_GATE__JPEG_ENC_MASK ;
 int JPEG_CGC_GATE__JRBBM_MASK ;
 int JPEG_SYS_INT_EN__DJRBC_MASK ;
 int RREG32 (int ) ;
 void* RREG32_SOC15 (int ,int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int SOC15_WAIT_ON_RREG (int ,int ,int ,int ,int ,int) ;
 int UVD ;
 int UVD_JMI_CNTL__SOFT_RESET_MASK ;
 int UVD_PGFSM_CONFIG__UVDJ_PWR_CONFIG__SHIFT ;
 int UVD_PGFSM_STATUS_UVDJ_PWR_ON ;
 int UVD_PGFSM_STATUS__UVDJ_PWR_STATUS_MASK ;
 int VCN ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int lower_32_bits (int ) ;
 int mmJPEG_CGC_CTRL ;
 int mmJPEG_CGC_GATE ;
 int mmJPEG_SYS_INT_EN ;
 int mmUVD_JMI_CNTL ;
 int mmUVD_JPEG_POWER_STATUS ;
 int mmUVD_JRBC_RB_CNTL ;
 int mmUVD_JRBC_RB_RPTR ;
 int mmUVD_JRBC_RB_SIZE ;
 int mmUVD_JRBC_RB_WPTR ;
 int mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH ;
 int mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW ;
 int mmUVD_LMI_JRBC_RB_VMID ;
 int mmUVD_PGFSM_CONFIG ;
 int mmUVD_PGFSM_STATUS ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int jpeg_v2_0_start(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring = &adev->vcn.inst->ring_jpeg;
 uint32_t tmp;
 int r = 0;


 tmp = 1 << UVD_PGFSM_CONFIG__UVDJ_PWR_CONFIG__SHIFT;
 WREG32(SOC15_REG_OFFSET(UVD, 0, mmUVD_PGFSM_CONFIG), tmp);

 SOC15_WAIT_ON_RREG(VCN, 0,
  mmUVD_PGFSM_STATUS, UVD_PGFSM_STATUS_UVDJ_PWR_ON,
  UVD_PGFSM_STATUS__UVDJ_PWR_STATUS_MASK, r);

 if (r) {
  DRM_ERROR("amdgpu: JPEG disable power gating failed\n");
  return r;
 }


 tmp = RREG32(SOC15_REG_OFFSET(UVD, 0, mmUVD_JPEG_POWER_STATUS)) & ~0x1;
 WREG32(SOC15_REG_OFFSET(UVD, 0, mmUVD_JPEG_POWER_STATUS), tmp);


 tmp = RREG32_SOC15(VCN, 0, mmJPEG_CGC_CTRL);
 tmp |= 1 << JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT;
 tmp |= 1 << JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT;
 tmp |= 4 << JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT;
 WREG32_SOC15(VCN, 0, mmJPEG_CGC_CTRL, tmp);

 tmp = RREG32_SOC15(VCN, 0, mmJPEG_CGC_GATE);
 tmp &= ~(JPEG_CGC_GATE__JPEG_DEC_MASK
  | JPEG_CGC_GATE__JPEG2_DEC_MASK
  | JPEG_CGC_GATE__JPEG_ENC_MASK
  | JPEG_CGC_GATE__JMCIF_MASK
  | JPEG_CGC_GATE__JRBBM_MASK);
 WREG32_SOC15(VCN, 0, mmJPEG_CGC_GATE, tmp);


 WREG32_P(SOC15_REG_OFFSET(UVD, 0, mmUVD_JMI_CNTL), 0,
  ~UVD_JMI_CNTL__SOFT_RESET_MASK);


 WREG32_P(SOC15_REG_OFFSET(VCN, 0, mmJPEG_SYS_INT_EN),
  JPEG_SYS_INT_EN__DJRBC_MASK,
  ~JPEG_SYS_INT_EN__DJRBC_MASK);

 WREG32_SOC15(UVD, 0, mmUVD_LMI_JRBC_RB_VMID, 0);
 WREG32_SOC15(UVD, 0, mmUVD_JRBC_RB_CNTL, (0x00000001L | 0x00000002L));
 WREG32_SOC15(UVD, 0, mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW,
  lower_32_bits(ring->gpu_addr));
 WREG32_SOC15(UVD, 0, mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH,
  upper_32_bits(ring->gpu_addr));
 WREG32_SOC15(UVD, 0, mmUVD_JRBC_RB_RPTR, 0);
 WREG32_SOC15(UVD, 0, mmUVD_JRBC_RB_WPTR, 0);
 WREG32_SOC15(UVD, 0, mmUVD_JRBC_RB_CNTL, 0x00000002L);
 WREG32_SOC15(UVD, 0, mmUVD_JRBC_RB_SIZE, ring->ring_size / 4);
 ring->wptr = RREG32_SOC15(UVD, 0, mmUVD_JRBC_RB_WPTR);

 return 0;
}
