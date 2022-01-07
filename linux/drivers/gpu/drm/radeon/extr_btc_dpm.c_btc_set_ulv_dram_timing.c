
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rv7xx_pl {int mclk; int sclk; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {struct rv7xx_pl* pl; } ;
struct evergreen_power_info {TYPE_1__ ulv; } ;


 int MC_ARB_BURST_TIME ;
 int MC_ARB_RFSH_RATE ;
 int POWERMODE0 (int ) ;
 int POWERMODE0_MASK ;
 int STATE0 (int ) ;
 int STATE0_MASK ;
 int WREG32_P (int ,int ,int ) ;
 int cypress_calculate_burst_time (struct radeon_device*,int ,int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int radeon_atom_set_engine_dram_timings (struct radeon_device*,int ,int ) ;
 int rv770_calculate_memory_refresh_rate (struct radeon_device*,int ) ;

__attribute__((used)) static int btc_set_ulv_dram_timing(struct radeon_device *rdev)
{
 u32 val;
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct rv7xx_pl *ulv_pl = eg_pi->ulv.pl;

 radeon_atom_set_engine_dram_timings(rdev,
         ulv_pl->sclk,
         ulv_pl->mclk);

 val = rv770_calculate_memory_refresh_rate(rdev, ulv_pl->sclk);
 WREG32_P(MC_ARB_RFSH_RATE, POWERMODE0(val), ~POWERMODE0_MASK);

 val = cypress_calculate_burst_time(rdev, ulv_pl->sclk, ulv_pl->mclk);
 WREG32_P(MC_ARB_BURST_TIME, STATE0(val), ~STATE0_MASK);

 return 0;
}
