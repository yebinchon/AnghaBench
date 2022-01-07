
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda998x_priv {scalar_t__ cec_notify; int cec; int detect_work; int edid_delay_timer; TYPE_1__* hdmi; scalar_t__ audio_pdev; int bridge; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int INT_FLAGS_2_EDID_BLK_RD ;
 int REG_CEC_RXSHPDINTENA ;
 int REG_INT_FLAGS_2 ;
 int cancel_work_sync (int *) ;
 int cec_notifier_put (scalar_t__) ;
 int cec_write (struct tda998x_priv*,int ,int ) ;
 int del_timer_sync (int *) ;
 struct tda998x_priv* dev_get_drvdata (struct device*) ;
 int drm_bridge_remove (int *) ;
 int free_irq (scalar_t__,struct tda998x_priv*) ;
 int i2c_unregister_device (int ) ;
 int platform_device_unregister (scalar_t__) ;
 int reg_clear (struct tda998x_priv*,int ,int ) ;

__attribute__((used)) static void tda998x_destroy(struct device *dev)
{
 struct tda998x_priv *priv = dev_get_drvdata(dev);

 drm_bridge_remove(&priv->bridge);


 cec_write(priv, REG_CEC_RXSHPDINTENA, 0);
 reg_clear(priv, REG_INT_FLAGS_2, INT_FLAGS_2_EDID_BLK_RD);

 if (priv->audio_pdev)
  platform_device_unregister(priv->audio_pdev);

 if (priv->hdmi->irq)
  free_irq(priv->hdmi->irq, priv);

 del_timer_sync(&priv->edid_delay_timer);
 cancel_work_sync(&priv->detect_work);

 i2c_unregister_device(priv->cec);

 if (priv->cec_notify)
  cec_notifier_put(priv->cec_notify);
}
