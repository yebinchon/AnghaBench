
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int r600_ih_ring_fini (struct radeon_device*) ;
 int r600_irq_suspend (struct radeon_device*) ;

void r600_irq_fini(struct radeon_device *rdev)
{
 r600_irq_suspend(rdev);
 r600_ih_ring_fini(rdev);
}
