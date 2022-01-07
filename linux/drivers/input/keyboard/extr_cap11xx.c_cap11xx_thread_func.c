
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cap11xx_priv {TYPE_1__* idev; int * keycodes; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int keycodemax; } ;


 int CAP11XX_REG_MAIN_CONTROL ;
 int CAP11XX_REG_SENSOR_INPUT ;
 int IRQ_HANDLED ;
 int input_report_key (TYPE_1__*,int ,unsigned int) ;
 int input_sync (TYPE_1__*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static irqreturn_t cap11xx_thread_func(int irq_num, void *data)
{
 struct cap11xx_priv *priv = data;
 unsigned int status;
 int ret, i;





 ret = regmap_update_bits(priv->regmap, CAP11XX_REG_MAIN_CONTROL, 1, 0);
 if (ret < 0)
  goto out;

 ret = regmap_read(priv->regmap, CAP11XX_REG_SENSOR_INPUT, &status);
 if (ret < 0)
  goto out;

 for (i = 0; i < priv->idev->keycodemax; i++)
  input_report_key(priv->idev, priv->keycodes[i],
     status & (1 << i));

 input_sync(priv->idev);

out:
 return IRQ_HANDLED;
}
