
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ supported; } ;
struct evergreen_power_info {int bootup_arb_registers; TYPE_1__ ulv; } ;


 int btc_set_arb0_registers (struct radeon_device*,int *) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;

__attribute__((used)) static void btc_set_boot_state_timing(struct radeon_device *rdev)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 if (eg_pi->ulv.supported)
  btc_set_arb0_registers(rdev, &eg_pi->bootup_arb_registers);
}
