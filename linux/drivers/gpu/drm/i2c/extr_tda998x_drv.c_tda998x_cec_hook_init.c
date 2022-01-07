
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda998x_priv {struct gpio_desc* calib; TYPE_1__* hdmi; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int GPIOD_ASIS ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_warn (int *,char*,int) ;
 struct gpio_desc* gpiod_get (int *,char*,int ) ;

__attribute__((used)) static int tda998x_cec_hook_init(void *data)
{
 struct tda998x_priv *priv = data;
 struct gpio_desc *calib;

 calib = gpiod_get(&priv->hdmi->dev, "nxp,calib", GPIOD_ASIS);
 if (IS_ERR(calib)) {
  dev_warn(&priv->hdmi->dev, "failed to get calibration gpio: %ld\n",
    PTR_ERR(calib));
  return PTR_ERR(calib);
 }

 priv->calib = calib;

 return 0;
}
