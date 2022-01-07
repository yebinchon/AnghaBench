
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int encoder; } ;
struct device {int dummy; } ;


 struct tda998x_priv* dev_get_drvdata (struct device*) ;
 int drm_encoder_cleanup (int *) ;

__attribute__((used)) static void tda998x_unbind(struct device *dev, struct device *master,
      void *data)
{
 struct tda998x_priv *priv = dev_get_drvdata(dev);

 drm_encoder_cleanup(&priv->encoder);
}
