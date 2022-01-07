
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct ci_power_info {scalar_t__ low_sclk_interrupt_t; } ;


 struct ci_power_info* ci_get_pi (struct radeon_device*) ;

__attribute__((used)) static void ci_init_sclk_t(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);

 pi->low_sclk_interrupt_t = 0;
}
