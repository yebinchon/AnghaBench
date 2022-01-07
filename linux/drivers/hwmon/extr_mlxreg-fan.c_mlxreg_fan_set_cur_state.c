
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct thermal_cooling_device {struct mlxreg_fan* devdata; } ;
struct TYPE_2__ {int reg; } ;
struct mlxreg_fan {unsigned long* cooling_levels; int dev; TYPE_1__ pwm; int regmap; } ;


 int EINVAL ;
 unsigned long MLXREG_FAN_MAX_STATE ;
 unsigned long MLXREG_FAN_PWM_DUTY2STATE (int ) ;
 int MLXREG_FAN_PWM_STATE2DUTY (unsigned long) ;
 unsigned long MLXREG_FAN_SPEED_MAX ;
 unsigned long MLXREG_FAN_SPEED_MIN ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int mlxreg_fan_set_cur_state(struct thermal_cooling_device *cdev,
        unsigned long state)

{
 struct mlxreg_fan *fan = cdev->devdata;
 unsigned long cur_state;
 u32 regval;
 int i;
 int err;
 if (state >= MLXREG_FAN_SPEED_MIN && state <= MLXREG_FAN_SPEED_MAX) {
  state -= MLXREG_FAN_MAX_STATE;
  for (i = 0; i < state; i++)
   fan->cooling_levels[i] = state;
  for (i = state; i <= MLXREG_FAN_MAX_STATE; i++)
   fan->cooling_levels[i] = i;

  err = regmap_read(fan->regmap, fan->pwm.reg, &regval);
  if (err) {
   dev_err(fan->dev, "Failed to query PWM duty\n");
   return err;
  }

  cur_state = MLXREG_FAN_PWM_DUTY2STATE(regval);
  if (state < cur_state)
   return 0;

  state = cur_state;
 }

 if (state > MLXREG_FAN_MAX_STATE)
  return -EINVAL;


 state = fan->cooling_levels[state];
 err = regmap_write(fan->regmap, fan->pwm.reg,
      MLXREG_FAN_PWM_STATE2DUTY(state));
 if (err) {
  dev_err(fan->dev, "Failed to write PWM duty\n");
  return err;
 }
 return 0;
}
