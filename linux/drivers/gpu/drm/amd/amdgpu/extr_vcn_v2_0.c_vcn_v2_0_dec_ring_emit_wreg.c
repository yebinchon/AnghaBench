
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_4__ {int cmd; int data1; int data0; } ;
struct TYPE_3__ {TYPE_2__ internal; } ;
struct amdgpu_device {TYPE_1__ vcn; } ;


 int PACKET0 (int ,int ) ;
 int VCN_DEC_CMD_WRITE_REG ;
 int VCN_DEC_KMD_CMD ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

void vcn_v2_0_dec_ring_emit_wreg(struct amdgpu_ring *ring,
    uint32_t reg, uint32_t val)
{
 struct amdgpu_device *adev = ring->adev;

 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.data0, 0));
 amdgpu_ring_write(ring, reg << 2);

 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.data1, 0));
 amdgpu_ring_write(ring, val);

 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.cmd, 0));

 amdgpu_ring_write(ring, VCN_DEC_KMD_CMD | (VCN_DEC_CMD_WRITE_REG << 1));
}
