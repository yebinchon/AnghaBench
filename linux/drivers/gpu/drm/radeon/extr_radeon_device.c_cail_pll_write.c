
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_device {int (* pll_wreg ) (struct radeon_device*,int ,int ) ;} ;
struct card_info {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 int stub1 (struct radeon_device*,int ,int ) ;

__attribute__((used)) static void cail_pll_write(struct card_info *info, uint32_t reg, uint32_t val)
{
 struct radeon_device *rdev = info->dev->dev_private;

 rdev->pll_wreg(rdev, reg, val);
}
