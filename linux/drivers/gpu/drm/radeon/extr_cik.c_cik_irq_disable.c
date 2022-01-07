
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int cik_disable_interrupt_state (struct radeon_device*) ;
 int cik_disable_interrupts (struct radeon_device*) ;
 int cik_irq_ack (struct radeon_device*) ;
 int mdelay (int) ;

__attribute__((used)) static void cik_irq_disable(struct radeon_device *rdev)
{
 cik_disable_interrupts(rdev);

 mdelay(1);
 cik_irq_ack(rdev);
 cik_disable_interrupt_state(rdev);
}
