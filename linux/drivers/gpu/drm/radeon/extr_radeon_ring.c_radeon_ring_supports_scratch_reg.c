
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int idx; } ;
struct radeon_device {int dummy; } ;






bool radeon_ring_supports_scratch_reg(struct radeon_device *rdev,
          struct radeon_ring *ring)
{
 switch (ring->idx) {
 case 128:
 case 130:
 case 129:
  return 1;
 default:
  return 0;
 }
}
