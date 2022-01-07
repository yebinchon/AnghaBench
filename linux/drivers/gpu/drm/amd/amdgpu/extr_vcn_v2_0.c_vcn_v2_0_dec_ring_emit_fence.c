
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_3__ {int cmd; int data1; int data0; int context_id; } ;
struct TYPE_4__ {TYPE_1__ internal; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 int PACKET0 (int ,int ) ;
 int VCN_DEC_CMD_FENCE ;
 int VCN_DEC_CMD_TRAP ;
 int VCN_DEC_KMD_CMD ;
 int WARN_ON (unsigned int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int upper_32_bits (int) ;

void vcn_v2_0_dec_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64 seq,
    unsigned flags)
{
 struct amdgpu_device *adev = ring->adev;

 WARN_ON(flags & AMDGPU_FENCE_FLAG_64BIT);
 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.context_id, 0));
 amdgpu_ring_write(ring, seq);

 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.data0, 0));
 amdgpu_ring_write(ring, addr & 0xffffffff);

 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.data1, 0));
 amdgpu_ring_write(ring, upper_32_bits(addr) & 0xff);

 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.cmd, 0));
 amdgpu_ring_write(ring, VCN_DEC_KMD_CMD | (VCN_DEC_CMD_FENCE << 1));

 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.data0, 0));
 amdgpu_ring_write(ring, 0);

 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.data1, 0));
 amdgpu_ring_write(ring, 0);

 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.cmd, 0));

 amdgpu_ring_write(ring, VCN_DEC_KMD_CMD | (VCN_DEC_CMD_TRAP << 1));
}
