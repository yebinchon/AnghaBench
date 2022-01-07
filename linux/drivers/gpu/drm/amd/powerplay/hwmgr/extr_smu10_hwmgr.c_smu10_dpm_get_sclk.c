
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu10_hwmgr {int gfx_max_freq_limit; int gfx_min_freq_limit; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int EINVAL ;

__attribute__((used)) static uint32_t smu10_dpm_get_sclk(struct pp_hwmgr *hwmgr, bool low)
{
 struct smu10_hwmgr *data;

 if (hwmgr == ((void*)0))
  return -EINVAL;

 data = (struct smu10_hwmgr *)(hwmgr->backend);

 if (low)
  return data->gfx_min_freq_limit;
 else
  return data->gfx_max_freq_limit;
}
