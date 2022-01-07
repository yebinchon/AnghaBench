
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpp_device {int dummy; } ;


 int HIDPP_ENABLE_BAT_REPORT ;
 int HIDPP_REG_ENABLE_REPORTS ;
 int hidpp10_set_register (struct hidpp_device*,int ,int ,int ,int ) ;

__attribute__((used)) static int hidpp10_enable_battery_reporting(struct hidpp_device *hidpp_dev)
{
 return hidpp10_set_register(hidpp_dev, HIDPP_REG_ENABLE_REPORTS, 0,
     HIDPP_ENABLE_BAT_REPORT, HIDPP_ENABLE_BAT_REPORT);
}
