
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {int ring_size; void* wptr; int gpu_addr; } ;
struct TYPE_7__ {int gb_addr_config; } ;
struct TYPE_8__ {TYPE_3__ config; } ;
struct TYPE_6__ {int num_vcn_inst; int harvest_config; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_2__ vcn; } ;
struct TYPE_5__ {struct amdgpu_ring ring_jpeg; } ;


 int JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT ;
 int JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT ;
 int JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT ;
 int JPEG_CGC_CTRL__JMCIF_MODE_MASK ;
 int JPEG_CGC_CTRL__JPEG2_DEC_MODE_MASK ;
 int JPEG_CGC_CTRL__JPEG_DEC_MODE_MASK ;
 int JPEG_CGC_CTRL__JRBBM_MODE_MASK ;
 int JPEG_CGC_GATE__JMCIF_MASK ;
 int JPEG_CGC_GATE__JPEG2_DEC_MASK ;
 int JPEG_CGC_GATE__JPEG_DEC_MASK ;
 int JPEG_CGC_GATE__JRBBM_MASK ;
 int JPEG_SYS_INT_EN__DJRBC_MASK ;
 void* RREG32_SOC15 (int ,int,int ) ;
 int SOC15_REG_OFFSET (int ,int,int ) ;
 int UVD ;
 int UVD_JMI_CNTL__SOFT_RESET_MASK ;
 int UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK ;
 int VCN ;
 int WREG32_P (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int,int ,int) ;
 int lower_32_bits (int ) ;
 int mmJPEG_CGC_CTRL ;
 int mmJPEG_CGC_GATE ;
 int mmJPEG_DEC_GFX10_ADDR_CONFIG ;
 int mmJPEG_DEC_GFX8_ADDR_CONFIG ;
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
 int upper_32_bits (int ) ;

__attribute__((used)) static int jpeg_v2_5_start(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 uint32_t tmp;
 int i;

 for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
  if (adev->vcn.harvest_config & (1 << i))
   continue;
  ring = &adev->vcn.inst[i].ring_jpeg;

  WREG32_P(SOC15_REG_OFFSET(UVD, i, mmUVD_JPEG_POWER_STATUS), 0,
   ~UVD_JPEG_POWER_STATUS__JPEG_POWER_STATUS_MASK);


  tmp = RREG32_SOC15(VCN, i, mmJPEG_CGC_CTRL);
  tmp |= 1 << JPEG_CGC_CTRL__DYN_CLOCK_MODE__SHIFT;
  tmp |= 1 << JPEG_CGC_CTRL__CLK_GATE_DLY_TIMER__SHIFT;
  tmp |= 4 << JPEG_CGC_CTRL__CLK_OFF_DELAY__SHIFT;
  WREG32_SOC15(VCN, i, mmJPEG_CGC_CTRL, tmp);

  tmp = RREG32_SOC15(VCN, i, mmJPEG_CGC_GATE);
  tmp &= ~(JPEG_CGC_GATE__JPEG_DEC_MASK
   | JPEG_CGC_GATE__JPEG2_DEC_MASK
   | JPEG_CGC_GATE__JMCIF_MASK
   | JPEG_CGC_GATE__JRBBM_MASK);
  WREG32_SOC15(VCN, i, mmJPEG_CGC_GATE, tmp);

  tmp = RREG32_SOC15(VCN, i, mmJPEG_CGC_CTRL);
  tmp &= ~(JPEG_CGC_CTRL__JPEG_DEC_MODE_MASK
   | JPEG_CGC_CTRL__JPEG2_DEC_MODE_MASK
   | JPEG_CGC_CTRL__JMCIF_MODE_MASK
   | JPEG_CGC_CTRL__JRBBM_MODE_MASK);
  WREG32_SOC15(VCN, i, mmJPEG_CGC_CTRL, tmp);


  WREG32_SOC15(UVD, i, mmJPEG_DEC_GFX8_ADDR_CONFIG,
   adev->gfx.config.gb_addr_config);
  WREG32_SOC15(UVD, i, mmJPEG_DEC_GFX10_ADDR_CONFIG,
   adev->gfx.config.gb_addr_config);


  WREG32_P(SOC15_REG_OFFSET(UVD, i, mmUVD_JMI_CNTL), 0,
   ~UVD_JMI_CNTL__SOFT_RESET_MASK);


  WREG32_P(SOC15_REG_OFFSET(VCN, i, mmJPEG_SYS_INT_EN),
   JPEG_SYS_INT_EN__DJRBC_MASK,
   ~JPEG_SYS_INT_EN__DJRBC_MASK);

  WREG32_SOC15(UVD, i, mmUVD_LMI_JRBC_RB_VMID, 0);
  WREG32_SOC15(UVD, i, mmUVD_JRBC_RB_CNTL, (0x00000001L | 0x00000002L));
  WREG32_SOC15(UVD, i, mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW,
   lower_32_bits(ring->gpu_addr));
  WREG32_SOC15(UVD, i, mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH,
   upper_32_bits(ring->gpu_addr));
  WREG32_SOC15(UVD, i, mmUVD_JRBC_RB_RPTR, 0);
  WREG32_SOC15(UVD, i, mmUVD_JRBC_RB_WPTR, 0);
  WREG32_SOC15(UVD, i, mmUVD_JRBC_RB_CNTL, 0x00000002L);
  WREG32_SOC15(UVD, i, mmUVD_JRBC_RB_SIZE, ring->ring_size / 4);
  ring->wptr = RREG32_SOC15(UVD, i, mmUVD_JRBC_RB_WPTR);
 }

 return 0;
}
