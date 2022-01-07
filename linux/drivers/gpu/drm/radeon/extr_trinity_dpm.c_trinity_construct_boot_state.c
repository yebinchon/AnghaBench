
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int allow_gnb_slow; scalar_t__ vce_wm; scalar_t__ display_wm; scalar_t__ force_nbp_state; scalar_t__ ss_divider_index; scalar_t__ ds_divider_index; int vddc_index; int sclk; } ;
struct TYPE_5__ {int num_levels; TYPE_3__* levels; } ;
struct TYPE_4__ {int bootup_nb_voltage_index; int bootup_sclk; } ;
struct trinity_power_info {TYPE_3__ boot_pl; TYPE_2__ current_ps; TYPE_1__ sys_info; } ;
struct radeon_device {int dummy; } ;


 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;

__attribute__((used)) static void trinity_construct_boot_state(struct radeon_device *rdev)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 pi->boot_pl.sclk = pi->sys_info.bootup_sclk;
 pi->boot_pl.vddc_index = pi->sys_info.bootup_nb_voltage_index;
 pi->boot_pl.ds_divider_index = 0;
 pi->boot_pl.ss_divider_index = 0;
 pi->boot_pl.allow_gnb_slow = 1;
 pi->boot_pl.force_nbp_state = 0;
 pi->boot_pl.display_wm = 0;
 pi->boot_pl.vce_wm = 0;
 pi->current_ps.num_levels = 1;
 pi->current_ps.levels[0] = pi->boot_pl;
}
