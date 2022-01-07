
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int* ring; int gpu_addr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 void* PACKETJ (int,int ,int ,int ) ;
 int PACKETJ_TYPE0 ;
 int PACKETJ_TYPE2 ;
 int PACKETJ_TYPE3 ;
 int PACKETJ_TYPE6 ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int lower_32_bits (int ) ;
 int mmUVD_JRBC_EXTERNAL_REG_BASE ;
 int mmUVD_JRBC_RB_CNTL ;
 int mmUVD_JRBC_RB_COND_RD_TIMER ;
 int mmUVD_JRBC_RB_REF_DATA ;
 int mmUVD_JRBC_RB_RPTR ;
 int mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH ;
 int mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW ;
 int upper_32_bits (int ) ;
 int vcn_v1_0_jpeg_ring_patch_wreg (struct amdgpu_ring*,int*,int,int) ;

__attribute__((used)) static void vcn_v1_0_jpeg_ring_set_patch_ring(struct amdgpu_ring *ring, uint32_t ptr)
{
 struct amdgpu_device *adev = ring->adev;

 uint32_t reg, reg_offset, val, mask, i;


 reg = SOC15_REG_OFFSET(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW);
 reg_offset = (reg << 2);
 val = lower_32_bits(ring->gpu_addr);
 vcn_v1_0_jpeg_ring_patch_wreg(ring, &ptr, reg_offset, val);


 reg = SOC15_REG_OFFSET(UVD, 0, mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH);
 reg_offset = (reg << 2);
 val = upper_32_bits(ring->gpu_addr);
 vcn_v1_0_jpeg_ring_patch_wreg(ring, &ptr, reg_offset, val);


 for (i = 0; i <= 2; i++) {
  ring->ring[ptr++] = PACKETJ(0, 0, 0, PACKETJ_TYPE2);
  ring->ring[ptr++] = 0;
 }


 reg = SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_CNTL);
 reg_offset = (reg << 2);
 val = 0x13;
 vcn_v1_0_jpeg_ring_patch_wreg(ring, &ptr, reg_offset, val);


 reg = SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_REF_DATA);
 reg_offset = (reg << 2);
 val = 0x1;
 vcn_v1_0_jpeg_ring_patch_wreg(ring, &ptr, reg_offset, val);


 reg = SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_CNTL);
 reg_offset = (reg << 2);
 val = 0x1;
 mask = 0x1;

 ring->ring[ptr++] = PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_COND_RD_TIMER), 0, 0, PACKETJ_TYPE0);
 ring->ring[ptr++] = 0x01400200;
 ring->ring[ptr++] = PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_REF_DATA), 0, 0, PACKETJ_TYPE0);
 ring->ring[ptr++] = val;
 ring->ring[ptr++] = PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_EXTERNAL_REG_BASE), 0, 0, PACKETJ_TYPE0);
 if (((reg_offset >= 0x1f800) && (reg_offset <= 0x21fff)) ||
  ((reg_offset >= 0x1e000) && (reg_offset <= 0x1e1ff))) {
  ring->ring[ptr++] = 0;
  ring->ring[ptr++] = PACKETJ((reg_offset >> 2), 0, 0, PACKETJ_TYPE3);
 } else {
  ring->ring[ptr++] = reg_offset;
  ring->ring[ptr++] = PACKETJ(0, 0, 0, PACKETJ_TYPE3);
 }
 ring->ring[ptr++] = mask;


 for (i = 0; i <= 12; i++) {
  ring->ring[ptr++] = PACKETJ(0, 0, 0, PACKETJ_TYPE6);
  ring->ring[ptr++] = 0;
 }


 reg = SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_RPTR);
 reg_offset = (reg << 2);
 val = 0;
 vcn_v1_0_jpeg_ring_patch_wreg(ring, &ptr, reg_offset, val);


 reg = SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_CNTL);
 reg_offset = (reg << 2);
 val = 0x12;
 vcn_v1_0_jpeg_ring_patch_wreg(ring, &ptr, reg_offset, val);
}
