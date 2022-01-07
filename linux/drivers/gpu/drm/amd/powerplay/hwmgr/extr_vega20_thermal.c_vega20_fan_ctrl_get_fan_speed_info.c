
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
struct phm_fan_speed_info {int supports_percent_read; int supports_percent_write; int supports_rpm_read; int supports_rpm_write; } ;


 int memset (struct phm_fan_speed_info*,int ,int) ;

int vega20_fan_ctrl_get_fan_speed_info(struct pp_hwmgr *hwmgr,
  struct phm_fan_speed_info *fan_speed_info)
{
 memset(fan_speed_info, 0, sizeof(*fan_speed_info));
 fan_speed_info->supports_percent_read = 1;
 fan_speed_info->supports_percent_write = 1;
 fan_speed_info->supports_rpm_read = 1;
 fan_speed_info->supports_rpm_write = 1;

 return 0;
}
