
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu7_hwmgr {int is_memory_gddr5; } ;
struct pp_hwmgr {int chip_id; int is_kicker; scalar_t__ backend; } ;







__attribute__((used)) static int smu7_vblank_too_short(struct pp_hwmgr *hwmgr,
     uint32_t vblank_time_us)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 uint32_t switch_limit_us;

 switch (hwmgr->chip_id) {
 case 131:
 case 130:
 case 129:
  if (hwmgr->is_kicker)
   switch_limit_us = data->is_memory_gddr5 ? 450 : 150;
  else
   switch_limit_us = data->is_memory_gddr5 ? 190 : 150;
  break;
 case 128:
  switch_limit_us = 30;
  break;
 default:
  switch_limit_us = data->is_memory_gddr5 ? 450 : 150;
  break;
 }

 if (vblank_time_us < switch_limit_us)
  return 1;
 else
  return 0;
}
