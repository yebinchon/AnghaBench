
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_reg; int* free; scalar_t__ reg_base; scalar_t__* reg; } ;
struct radeon_device {TYPE_1__ scratch; } ;


 scalar_t__ SCRATCH_REG0 ;

__attribute__((used)) static void cik_scratch_init(struct radeon_device *rdev)
{
 int i;

 rdev->scratch.num_reg = 7;
 rdev->scratch.reg_base = SCRATCH_REG0;
 for (i = 0; i < rdev->scratch.num_reg; i++) {
  rdev->scratch.free[i] = 1;
  rdev->scratch.reg[i] = rdev->scratch.reg_base + (i * 4);
 }
}
