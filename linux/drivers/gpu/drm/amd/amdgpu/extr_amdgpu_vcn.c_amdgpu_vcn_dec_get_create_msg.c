
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo {int dummy; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_reserved (struct amdgpu_device*,int,int ,int ,struct amdgpu_bo**,int *,void**) ;
 int amdgpu_vcn_dec_send_msg (struct amdgpu_ring*,struct amdgpu_bo*,struct dma_fence**) ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static int amdgpu_vcn_dec_get_create_msg(struct amdgpu_ring *ring, uint32_t handle,
         struct dma_fence **fence)
{
 struct amdgpu_device *adev = ring->adev;
 struct amdgpu_bo *bo = ((void*)0);
 uint32_t *msg;
 int r, i;

 r = amdgpu_bo_create_reserved(adev, 1024, PAGE_SIZE,
          AMDGPU_GEM_DOMAIN_VRAM,
          &bo, ((void*)0), (void **)&msg);
 if (r)
  return r;

 msg[0] = cpu_to_le32(0x00000028);
 msg[1] = cpu_to_le32(0x00000038);
 msg[2] = cpu_to_le32(0x00000001);
 msg[3] = cpu_to_le32(0x00000000);
 msg[4] = cpu_to_le32(handle);
 msg[5] = cpu_to_le32(0x00000000);
 msg[6] = cpu_to_le32(0x00000001);
 msg[7] = cpu_to_le32(0x00000028);
 msg[8] = cpu_to_le32(0x00000010);
 msg[9] = cpu_to_le32(0x00000000);
 msg[10] = cpu_to_le32(0x00000007);
 msg[11] = cpu_to_le32(0x00000000);
 msg[12] = cpu_to_le32(0x00000780);
 msg[13] = cpu_to_le32(0x00000440);
 for (i = 14; i < 1024; ++i)
  msg[i] = cpu_to_le32(0x0);

 return amdgpu_vcn_dec_send_msg(ring, bo, fence);
}
