
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmg160_data {int regmap; } ;


 int dev_err (struct device*,char*,int) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int bmg160_set_power_state(struct bmg160_data *data, bool on)
{
 return 0;
}
