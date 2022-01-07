
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {TYPE_2__* asic; } ;
struct TYPE_3__ {scalar_t__ blit; scalar_t__ dma; } ;
struct TYPE_4__ {TYPE_1__ copy; } ;


 int RADEON_TEST_COPY_BLIT ;
 int RADEON_TEST_COPY_DMA ;
 int radeon_do_test_moves (struct radeon_device*,int ) ;

void radeon_test_moves(struct radeon_device *rdev)
{
 if (rdev->asic->copy.dma)
  radeon_do_test_moves(rdev, RADEON_TEST_COPY_DMA);
 if (rdev->asic->copy.blit)
  radeon_do_test_moves(rdev, RADEON_TEST_COPY_BLIT);
}
