
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_device {int dummy; } ;
struct card_info {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 int WREG32_IO (int,int) ;

__attribute__((used)) static void cail_ioreg_write(struct card_info *info, uint32_t reg, uint32_t val)
{
 struct radeon_device *rdev = info->dev->dev_private;

 WREG32_IO(reg*4, val);
}
