
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int num_reg; scalar_t__* reg; int* free; } ;
struct radeon_device {TYPE_1__ scratch; } ;



void radeon_scratch_free(struct radeon_device *rdev, uint32_t reg)
{
 int i;

 for (i = 0; i < rdev->scratch.num_reg; i++) {
  if (rdev->scratch.reg[i] == reg) {
   rdev->scratch.free[i] = 1;
   return;
  }
 }
}
