
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;


 unsigned long MLXREG_FAN_MAX_STATE ;

__attribute__((used)) static int mlxreg_fan_get_max_state(struct thermal_cooling_device *cdev,
        unsigned long *state)
{
 *state = MLXREG_FAN_MAX_STATE;
 return 0;
}
