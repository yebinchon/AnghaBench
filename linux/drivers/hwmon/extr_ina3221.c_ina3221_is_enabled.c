
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina3221_data {int reg_config; int pm_dev; } ;


 int INA3221_CONFIG_CHx_EN (int) ;
 scalar_t__ pm_runtime_active (int ) ;

__attribute__((used)) static inline bool ina3221_is_enabled(struct ina3221_data *ina, int channel)
{
 return pm_runtime_active(ina->pm_dev) &&
        (ina->reg_config & INA3221_CONFIG_CHx_EN(channel));
}
