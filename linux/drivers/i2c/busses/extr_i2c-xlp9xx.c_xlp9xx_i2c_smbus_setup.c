
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct xlp9xx_i2c_dev {int ara; TYPE_1__ alert_data; int adapter; } ;
struct platform_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int i2c_setup_smbus_alert (int *,TYPE_1__*) ;

__attribute__((used)) static int xlp9xx_i2c_smbus_setup(struct xlp9xx_i2c_dev *priv,
      struct platform_device *pdev)
{
 if (!priv->alert_data.irq)
  return -EINVAL;

 priv->ara = i2c_setup_smbus_alert(&priv->adapter, &priv->alert_data);
 if (!priv->ara)
  return -ENODEV;

 return 0;
}
