
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct ci_power_info {scalar_t__ caps_tcp_ramping; scalar_t__ caps_td_ramping; scalar_t__ caps_db_ramping; scalar_t__ caps_sq_ramping; } ;


 int ci_do_enable_didt (struct radeon_device*,int) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_program_pt_config_registers (struct radeon_device*,int ) ;
 int cik_enter_rlc_safe_mode (struct radeon_device*) ;
 int cik_exit_rlc_safe_mode (struct radeon_device*) ;
 int didt_config_ci ;

__attribute__((used)) static int ci_enable_didt(struct radeon_device *rdev, bool enable)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 int ret;

 if (pi->caps_sq_ramping || pi->caps_db_ramping ||
     pi->caps_td_ramping || pi->caps_tcp_ramping) {
  cik_enter_rlc_safe_mode(rdev);

  if (enable) {
   ret = ci_program_pt_config_registers(rdev, didt_config_ci);
   if (ret) {
    cik_exit_rlc_safe_mode(rdev);
    return ret;
   }
  }

  ci_do_enable_didt(rdev, enable);

  cik_exit_rlc_safe_mode(rdev);
 }

 return 0;
}
