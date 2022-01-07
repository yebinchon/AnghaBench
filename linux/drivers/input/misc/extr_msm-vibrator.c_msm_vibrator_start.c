
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_vibrator {int enabled; int magnitude; int mutex; int enable_gpio; int clk; TYPE_1__* input; int vcc; } ;
struct TYPE_2__ {int dev; } ;


 int REG_CBCR ;
 int REG_CFG_RCGR ;
 int REG_CMD_RCGR ;
 int REG_D ;
 int REG_M ;
 int REG_N ;
 int clk_disable (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_err (int *,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msm_vibrator_write (struct msm_vibrator*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int msm_vibrator_start(struct msm_vibrator *vibrator)
{
 int d_reg_val, ret = 0;

 mutex_lock(&vibrator->mutex);

 if (!vibrator->enabled) {
  ret = clk_set_rate(vibrator->clk, 24000);
  if (ret) {
   dev_err(&vibrator->input->dev,
    "Failed to set clock rate: %d\n", ret);
   goto unlock;
  }

  ret = clk_prepare_enable(vibrator->clk);
  if (ret) {
   dev_err(&vibrator->input->dev,
    "Failed to enable clock: %d\n", ret);
   goto unlock;
  }

  ret = regulator_enable(vibrator->vcc);
  if (ret) {
   dev_err(&vibrator->input->dev,
    "Failed to enable regulator: %d\n", ret);
   clk_disable(vibrator->clk);
   goto unlock;
  }

  gpiod_set_value_cansleep(vibrator->enable_gpio, 1);

  vibrator->enabled = 1;
 }

 d_reg_val = 127 - ((126 * vibrator->magnitude) / 0xffff);
 msm_vibrator_write(vibrator, REG_CFG_RCGR,
      (2 << 12) |
      (0 << 8) |
      (7 << 0));
 msm_vibrator_write(vibrator, REG_M, 1);
 msm_vibrator_write(vibrator, REG_N, 128);
 msm_vibrator_write(vibrator, REG_D, d_reg_val);
 msm_vibrator_write(vibrator, REG_CMD_RCGR, 1);
 msm_vibrator_write(vibrator, REG_CBCR, 1);

unlock:
 mutex_unlock(&vibrator->mutex);

 return ret;
}
