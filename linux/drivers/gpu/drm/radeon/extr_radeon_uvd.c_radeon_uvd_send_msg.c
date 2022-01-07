
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct radeon_ib {int* ptr; int length_dw; int fence; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;


 void* PACKET0 (int ,int ) ;
 int UVD_GPCOM_VCPU_CMD ;
 int UVD_GPCOM_VCPU_DATA0 ;
 int UVD_GPCOM_VCPU_DATA1 ;
 int UVD_NO_OP ;
 struct radeon_fence* radeon_fence_ref (int ) ;
 int radeon_ib_free (struct radeon_device*,struct radeon_ib*) ;
 int radeon_ib_get (struct radeon_device*,int,struct radeon_ib*,int *,int) ;
 int radeon_ib_schedule (struct radeon_device*,struct radeon_ib*,int *,int) ;

__attribute__((used)) static int radeon_uvd_send_msg(struct radeon_device *rdev,
          int ring, uint64_t addr,
          struct radeon_fence **fence)
{
 struct radeon_ib ib;
 int i, r;

 r = radeon_ib_get(rdev, ring, &ib, ((void*)0), 64);
 if (r)
  return r;

 ib.ptr[0] = PACKET0(UVD_GPCOM_VCPU_DATA0, 0);
 ib.ptr[1] = addr;
 ib.ptr[2] = PACKET0(UVD_GPCOM_VCPU_DATA1, 0);
 ib.ptr[3] = addr >> 32;
 ib.ptr[4] = PACKET0(UVD_GPCOM_VCPU_CMD, 0);
 ib.ptr[5] = 0;
 for (i = 6; i < 16; i += 2) {
  ib.ptr[i] = PACKET0(UVD_NO_OP, 0);
  ib.ptr[i+1] = 0;
 }
 ib.length_dw = 16;

 r = radeon_ib_schedule(rdev, &ib, ((void*)0), 0);

 if (fence)
  *fence = radeon_fence_ref(ib.fence);

 radeon_ib_free(rdev, &ib);
 return r;
}
