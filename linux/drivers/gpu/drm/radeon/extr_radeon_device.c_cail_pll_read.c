
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_device {int (* pll_rreg ) (struct radeon_device*,int ) ;} ;
struct card_info {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 int stub1 (struct radeon_device*,int ) ;

__attribute__((used)) static uint32_t cail_pll_read(struct card_info *info, uint32_t reg)
{
 struct radeon_device *rdev = info->dev->dev_private;
 uint32_t r;

 r = rdev->pll_rreg(rdev, reg);
 return r;
}
