
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_4__ {int reg_val_offs; } ;
struct TYPE_3__ {scalar_t__ gpu_addr; } ;
struct amdgpu_device {TYPE_2__ virt; TYPE_1__ wb; } ;


 int PACKET3 (int ,int) ;
 int PACKET3_COPY_DATA ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void gfx_v9_0_ring_emit_rreg(struct amdgpu_ring *ring, uint32_t reg)
{
 struct amdgpu_device *adev = ring->adev;

 amdgpu_ring_write(ring, PACKET3(PACKET3_COPY_DATA, 4));
 amdgpu_ring_write(ring, 0 |
    (5 << 8) |
    (1 << 20));
 amdgpu_ring_write(ring, reg);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, lower_32_bits(adev->wb.gpu_addr +
    adev->virt.reg_val_offs * 4));
 amdgpu_ring_write(ring, upper_32_bits(adev->wb.gpu_addr +
    adev->virt.reg_val_offs * 4));
}
