
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_reg; int* free; scalar_t__ reg_base; scalar_t__* reg; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ scratch; } ;


 scalar_t__ CHIP_R300 ;
 scalar_t__ RADEON_SCRATCH_REG0 ;

void radeon_scratch_init(struct radeon_device *rdev)
{
 int i;


 if (rdev->family < CHIP_R300) {
  rdev->scratch.num_reg = 5;
 } else {
  rdev->scratch.num_reg = 7;
 }
 rdev->scratch.reg_base = RADEON_SCRATCH_REG0;
 for (i = 0; i < rdev->scratch.num_reg; i++) {
  rdev->scratch.free[i] = 1;
  rdev->scratch.reg[i] = rdev->scratch.reg_base + (i * 4);
 }
}
