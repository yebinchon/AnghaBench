
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct thermal_cooling_device {struct mlxreg_fan* devdata; } ;
struct TYPE_2__ {int reg; } ;
struct mlxreg_fan {int dev; TYPE_1__ pwm; int regmap; } ;


 unsigned long MLXREG_FAN_PWM_DUTY2STATE (int ) ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static int mlxreg_fan_get_cur_state(struct thermal_cooling_device *cdev,
        unsigned long *state)

{
 struct mlxreg_fan *fan = cdev->devdata;
 u32 regval;
 int err;

 err = regmap_read(fan->regmap, fan->pwm.reg, &regval);
 if (err) {
  dev_err(fan->dev, "Failed to query PWM duty\n");
  return err;
 }

 *state = MLXREG_FAN_PWM_DUTY2STATE(regval);

 return 0;
}
