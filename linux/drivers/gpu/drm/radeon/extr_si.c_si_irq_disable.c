
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int mdelay (int) ;
 int si_disable_interrupt_state (struct radeon_device*) ;
 int si_disable_interrupts (struct radeon_device*) ;
 int si_irq_ack (struct radeon_device*) ;

__attribute__((used)) static void si_irq_disable(struct radeon_device *rdev)
{
 si_disable_interrupts(rdev);

 mdelay(1);
 si_irq_ack(rdev);
 si_disable_interrupt_state(rdev);
}
