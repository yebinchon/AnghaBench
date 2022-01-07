
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int cik_irq_disable (struct radeon_device*) ;
 int cik_rlc_stop (struct radeon_device*) ;

__attribute__((used)) static void cik_irq_suspend(struct radeon_device *rdev)
{
 cik_irq_disable(rdev);
 cik_rlc_stop(rdev);
}
