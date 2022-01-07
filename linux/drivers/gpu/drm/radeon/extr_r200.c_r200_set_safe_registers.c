
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg_safe_bm_size; int reg_safe_bm; } ;
struct TYPE_4__ {TYPE_1__ r100; } ;
struct radeon_device {TYPE_2__ config; } ;


 int ARRAY_SIZE (int ) ;
 int r200_reg_safe_bm ;

void r200_set_safe_registers(struct radeon_device *rdev)
{
 rdev->config.r100.reg_safe_bm = r200_reg_safe_bm;
 rdev->config.r100.reg_safe_bm_size = ARRAY_SIZE(r200_reg_safe_bm);
}
