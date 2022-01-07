
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int CHECK_VMID ;
 int CMD ;
 int MODE ;
 int REG_SET_FIELD (int ,int ,int ,unsigned int) ;
 int SQ_CMD ;
 int VM_ID ;
 int WREG32 (int ,int ) ;
 int mmSQ_CMD ;

__attribute__((used)) static void gfx_v8_0_ring_soft_recovery(struct amdgpu_ring *ring, unsigned vmid)
{
 struct amdgpu_device *adev = ring->adev;
 uint32_t value = 0;

 value = REG_SET_FIELD(value, SQ_CMD, CMD, 0x03);
 value = REG_SET_FIELD(value, SQ_CMD, MODE, 0x01);
 value = REG_SET_FIELD(value, SQ_CMD, CHECK_VMID, 1);
 value = REG_SET_FIELD(value, SQ_CMD, VM_ID, vmid);
 WREG32(mmSQ_CMD, value);
}
