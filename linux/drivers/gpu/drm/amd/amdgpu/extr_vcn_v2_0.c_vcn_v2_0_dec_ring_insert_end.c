
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_3__ {int cmd; } ;
struct TYPE_4__ {TYPE_1__ internal; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;


 int PACKET0 (int ,int ) ;
 int VCN_DEC_CMD_PACKET_END ;
 int VCN_DEC_KMD_CMD ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

void vcn_v2_0_dec_ring_insert_end(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.cmd, 0));
 amdgpu_ring_write(ring, VCN_DEC_KMD_CMD | (VCN_DEC_CMD_PACKET_END << 1));
}
