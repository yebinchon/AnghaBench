
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct lm3533_als {TYPE_1__* pdev; int lm3533; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ LM3533_ALS_INPUT_MODE_MASK ;
 int LM3533_REG_ALS_CONF ;
 int dev_err (int *,char*,int) ;
 int lm3533_update (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int lm3533_als_set_input_mode(struct lm3533_als *als, bool pwm_mode)
{
 u8 mask = LM3533_ALS_INPUT_MODE_MASK;
 u8 val;
 int ret;

 if (pwm_mode)
  val = mask;
 else
  val = 0;

 ret = lm3533_update(als->lm3533, LM3533_REG_ALS_CONF, val, mask);
 if (ret) {
  dev_err(&als->pdev->dev, "failed to set input mode %d\n",
        pwm_mode);
  return ret;
 }

 return 0;
}
