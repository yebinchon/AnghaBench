
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv6xx_pl {int vddc; int mclk; int sclk; } ;
struct rv6xx_ps {struct rv6xx_pl high; struct rv6xx_pl medium; struct rv6xx_pl low; } ;
struct radeon_ps {int dclk; int vclk; int caps; int class2; int class; } ;
struct radeon_device {int dummy; } ;


 int printk (char*,int ,int ,...) ;
 int r600_dpm_print_cap_info (int ) ;
 int r600_dpm_print_class_info (int ,int ) ;
 int r600_dpm_print_ps_status (struct radeon_device*,struct radeon_ps*) ;
 struct rv6xx_ps* rv6xx_get_ps (struct radeon_ps*) ;

void rv6xx_dpm_print_power_state(struct radeon_device *rdev,
     struct radeon_ps *rps)
{
 struct rv6xx_ps *ps = rv6xx_get_ps(rps);
 struct rv6xx_pl *pl;

 r600_dpm_print_class_info(rps->class, rps->class2);
 r600_dpm_print_cap_info(rps->caps);
 printk("\tuvd    vclk: %d dclk: %d\n", rps->vclk, rps->dclk);
 pl = &ps->low;
 printk("\t\tpower level 0    sclk: %u mclk: %u vddc: %u\n",
        pl->sclk, pl->mclk, pl->vddc);
 pl = &ps->medium;
 printk("\t\tpower level 1    sclk: %u mclk: %u vddc: %u\n",
        pl->sclk, pl->mclk, pl->vddc);
 pl = &ps->high;
 printk("\t\tpower level 2    sclk: %u mclk: %u vddc: %u\n",
        pl->sclk, pl->mclk, pl->vddc);
 r600_dpm_print_ps_status(rdev, rps);
}
