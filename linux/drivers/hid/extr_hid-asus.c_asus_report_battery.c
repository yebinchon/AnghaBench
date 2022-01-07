
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct asus_drvdata {int battery_in_query; int battery; } ;


 int BATTERY_REPORT_SIZE ;
 int power_supply_changed (int ) ;

__attribute__((used)) static int asus_report_battery(struct asus_drvdata *drvdata, u8 *data, int size)
{

 if ((drvdata->battery_in_query == 0) &&
    (size == BATTERY_REPORT_SIZE))
  power_supply_changed(drvdata->battery);

 return 0;
}
