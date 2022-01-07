
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct lm3533_als {TYPE_1__* pdev; int lm3533; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 scalar_t__ LM3533_ALS_RESISTOR_MAX ;
 scalar_t__ LM3533_ALS_RESISTOR_MIN ;
 int LM3533_REG_ALS_RESISTOR_SELECT ;
 int dev_err (int *,char*) ;
 int lm3533_write (int ,int ,scalar_t__) ;

__attribute__((used)) static int lm3533_als_set_resistor(struct lm3533_als *als, u8 val)
{
 int ret;

 if (val < LM3533_ALS_RESISTOR_MIN || val > LM3533_ALS_RESISTOR_MAX) {
  dev_err(&als->pdev->dev, "invalid resistor value\n");
  return -EINVAL;
 };

 ret = lm3533_write(als->lm3533, LM3533_REG_ALS_RESISTOR_SELECT, val);
 if (ret) {
  dev_err(&als->pdev->dev, "failed to set resistor\n");
  return ret;
 }

 return 0;
}
