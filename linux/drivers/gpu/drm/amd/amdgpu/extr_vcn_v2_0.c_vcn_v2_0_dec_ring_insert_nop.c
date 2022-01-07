
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {int wptr; struct amdgpu_device* adev; } ;
struct TYPE_3__ {int nop; } ;
struct TYPE_4__ {TYPE_1__ internal; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;


 int PACKET0 (int ,int ) ;
 int WARN_ON (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;

void vcn_v2_0_dec_ring_insert_nop(struct amdgpu_ring *ring, uint32_t count)
{
 struct amdgpu_device *adev = ring->adev;
 int i;

 WARN_ON(ring->wptr % 2 || count % 2);

 for (i = 0; i < count / 2; i++) {
  amdgpu_ring_write(ring, PACKET0(adev->vcn.internal.nop, 0));
  amdgpu_ring_write(ring, 0);
 }
}
