
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int radeon_invalid_get_allowed_info_register(struct radeon_device *rdev,
          u32 reg, u32 *val)
{
 return -EINVAL;
}
