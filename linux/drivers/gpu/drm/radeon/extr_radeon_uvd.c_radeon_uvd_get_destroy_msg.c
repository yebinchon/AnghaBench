
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct radeon_fence {int dummy; } ;
struct TYPE_2__ {int* cpu_addr; int gpu_addr; int vcpu_bo; } ;
struct radeon_device {TYPE_1__ uvd; } ;


 int RADEON_GPU_PAGE_SIZE ;
 int cpu_to_le32 (int) ;
 int radeon_bo_reserve (int ,int) ;
 int radeon_bo_size (int ) ;
 int radeon_bo_unreserve (int ) ;
 int radeon_uvd_send_msg (struct radeon_device*,int,int,struct radeon_fence**) ;

int radeon_uvd_get_destroy_msg(struct radeon_device *rdev, int ring,
          uint32_t handle, struct radeon_fence **fence)
{

 uint64_t offs = radeon_bo_size(rdev->uvd.vcpu_bo) -
  RADEON_GPU_PAGE_SIZE;

 uint32_t *msg = rdev->uvd.cpu_addr + offs;
 uint64_t addr = rdev->uvd.gpu_addr + offs;

 int r, i;

 r = radeon_bo_reserve(rdev->uvd.vcpu_bo, 1);
 if (r)
  return r;


 msg[0] = cpu_to_le32(0x00000de4);
 msg[1] = cpu_to_le32(0x00000002);
 msg[2] = cpu_to_le32(handle);
 msg[3] = cpu_to_le32(0x00000000);
 for (i = 4; i < 1024; ++i)
  msg[i] = cpu_to_le32(0x0);

 r = radeon_uvd_send_msg(rdev, ring, addr, fence);
 radeon_bo_unreserve(rdev->uvd.vcpu_bo);
 return r;
}
