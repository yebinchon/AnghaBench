
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int dummy; } ;


 int CH7017_LVDS_POWER_DOWN ;
 int CH7017_LVDS_POWER_DOWN_EN ;
 int ch7017_read (struct intel_dvo_device*,int ,int*) ;

__attribute__((used)) static bool ch7017_get_hw_state(struct intel_dvo_device *dvo)
{
 u8 val;

 ch7017_read(dvo, CH7017_LVDS_POWER_DOWN, &val);

 if (val & CH7017_LVDS_POWER_DOWN_EN)
  return 0;
 else
  return 1;
}
