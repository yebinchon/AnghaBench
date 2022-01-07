
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_power_info {int cac_weights; int cac_override; int lcac_config; } ;
struct radeon_device {int dummy; } ;
struct ni_power_info {int enable_cac; int cac_configuration_required; } ;


 struct ni_power_info* ni_get_pi (struct radeon_device*) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;
 int si_program_cac_config_registers (struct radeon_device*,int ) ;

__attribute__((used)) static int si_initialize_hardware_cac_manager(struct radeon_device *rdev)
{
 struct ni_power_info *ni_pi = ni_get_pi(rdev);
 struct si_power_info *si_pi = si_get_pi(rdev);
 int ret;

 if ((ni_pi->enable_cac == 0) ||
     (ni_pi->cac_configuration_required == 0))
  return 0;

 ret = si_program_cac_config_registers(rdev, si_pi->lcac_config);
 if (ret)
  return ret;
 ret = si_program_cac_config_registers(rdev, si_pi->cac_override);
 if (ret)
  return ret;
 ret = si_program_cac_config_registers(rdev, si_pi->cac_weights);
 if (ret)
  return ret;

 return 0;
}
