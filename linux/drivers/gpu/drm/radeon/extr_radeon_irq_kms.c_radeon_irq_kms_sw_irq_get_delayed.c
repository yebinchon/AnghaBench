
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ring_int; } ;
struct radeon_device {TYPE_1__ irq; } ;


 int atomic_inc_return (int *) ;

bool radeon_irq_kms_sw_irq_get_delayed(struct radeon_device *rdev, int ring)
{
 return atomic_inc_return(&rdev->irq.ring_int[ring]) == 1;
}
