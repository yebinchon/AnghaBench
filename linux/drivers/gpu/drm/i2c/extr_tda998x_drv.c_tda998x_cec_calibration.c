
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda998x_priv {int edid_mutex; TYPE_1__* hdmi; struct gpio_desc* calib; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int disable_irq (scalar_t__) ;
 int enable_irq (scalar_t__) ;
 int gpiod_direction_input (struct gpio_desc*) ;
 int gpiod_direction_output (struct gpio_desc*,int) ;
 int gpiod_set_value (struct gpio_desc*,int) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int mdelay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tda998x_cec_set_calibration (struct tda998x_priv*,int) ;

__attribute__((used)) static void tda998x_cec_calibration(struct tda998x_priv *priv)
{
 struct gpio_desc *calib = priv->calib;

 mutex_lock(&priv->edid_mutex);
 if (priv->hdmi->irq > 0)
  disable_irq(priv->hdmi->irq);
 gpiod_direction_output(calib, 1);
 tda998x_cec_set_calibration(priv, 1);

 local_irq_disable();
 gpiod_set_value(calib, 0);
 mdelay(10);
 gpiod_set_value(calib, 1);
 local_irq_enable();

 tda998x_cec_set_calibration(priv, 0);
 gpiod_direction_input(calib);
 if (priv->hdmi->irq > 0)
  enable_irq(priv->hdmi->irq);
 mutex_unlock(&priv->edid_mutex);
}
