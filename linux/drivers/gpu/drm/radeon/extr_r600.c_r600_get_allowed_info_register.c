
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;



 int EINVAL ;


 int RREG32 (int) ;



int r600_get_allowed_info_register(struct radeon_device *rdev,
       u32 reg, u32 *val)
{
 switch (reg) {
 case 131:
 case 130:
 case 129:
 case 132:
 case 128:
  *val = RREG32(reg);
  return 0;
 default:
  return -EINVAL;
 }
}
