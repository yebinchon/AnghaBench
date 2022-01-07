
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dclk; int vclk; int caps; int class2; int class; } ;
struct radeon_device {int dummy; } ;
struct igp_ps {int max_voltage; int sclk_high; int min_voltage; int sclk_low; } ;


 int printk (char*,int ,int ) ;
 int r600_dpm_print_cap_info (int ) ;
 int r600_dpm_print_class_info (int ,int ) ;
 int r600_dpm_print_ps_status (struct radeon_device*,struct radeon_ps*) ;
 struct igp_ps* rs780_get_ps (struct radeon_ps*) ;

void rs780_dpm_print_power_state(struct radeon_device *rdev,
     struct radeon_ps *rps)
{
 struct igp_ps *ps = rs780_get_ps(rps);

 r600_dpm_print_class_info(rps->class, rps->class2);
 r600_dpm_print_cap_info(rps->caps);
 printk("\tuvd    vclk: %d dclk: %d\n", rps->vclk, rps->dclk);
 printk("\t\tpower level 0    sclk: %u vddc_index: %d\n",
        ps->sclk_low, ps->min_voltage);
 printk("\t\tpower level 1    sclk: %u vddc_index: %d\n",
        ps->sclk_high, ps->max_voltage);
 r600_dpm_print_ps_status(rdev, rps);
}
