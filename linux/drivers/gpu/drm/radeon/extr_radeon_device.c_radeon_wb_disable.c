
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct radeon_device {TYPE_1__ wb; } ;



void radeon_wb_disable(struct radeon_device *rdev)
{
 rdev->wb.enabled = 0;
}
