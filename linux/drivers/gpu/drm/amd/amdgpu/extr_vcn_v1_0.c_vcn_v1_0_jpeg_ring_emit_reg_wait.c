
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int PACKETJ (int,int ,int ,int ) ;
 int PACKETJ_TYPE0 ;
 int PACKETJ_TYPE3 ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmUVD_JRBC_EXTERNAL_REG_BASE ;
 int mmUVD_JRBC_RB_COND_RD_TIMER ;
 int mmUVD_JRBC_RB_REF_DATA ;

__attribute__((used)) static void vcn_v1_0_jpeg_ring_emit_reg_wait(struct amdgpu_ring *ring,
         uint32_t reg, uint32_t val,
         uint32_t mask)
{
 struct amdgpu_device *adev = ring->adev;
 uint32_t reg_offset = (reg << 2);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_COND_RD_TIMER), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, 0x01400200);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_RB_REF_DATA), 0, 0, PACKETJ_TYPE0));
 amdgpu_ring_write(ring, val);

 amdgpu_ring_write(ring,
  PACKETJ(SOC15_REG_OFFSET(UVD, 0, mmUVD_JRBC_EXTERNAL_REG_BASE), 0, 0, PACKETJ_TYPE0));
 if (((reg_offset >= 0x1f800) && (reg_offset <= 0x21fff)) ||
  ((reg_offset >= 0x1e000) && (reg_offset <= 0x1e1ff))) {
  amdgpu_ring_write(ring, 0);
  amdgpu_ring_write(ring,
   PACKETJ((reg_offset >> 2), 0, 0, PACKETJ_TYPE3));
 } else {
  amdgpu_ring_write(ring, reg_offset);
  amdgpu_ring_write(ring,
   PACKETJ(0, 0, 0, PACKETJ_TYPE3));
 }
 amdgpu_ring_write(ring, mask);
}
