
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int wptr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int PACKET0 (int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int WARN_ON (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;
 int mmUVD_NO_OP ;

__attribute__((used)) static void vcn_v1_0_dec_ring_insert_nop(struct amdgpu_ring *ring, uint32_t count)
{
 struct amdgpu_device *adev = ring->adev;
 int i;

 WARN_ON(ring->wptr % 2 || count % 2);

 for (i = 0; i < count / 2; i++) {
  amdgpu_ring_write(ring, PACKET0(SOC15_REG_OFFSET(UVD, 0, mmUVD_NO_OP), 0));
  amdgpu_ring_write(ring, 0);
 }
}
