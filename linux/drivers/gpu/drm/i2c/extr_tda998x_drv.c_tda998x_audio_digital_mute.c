
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int audio_mutex; } ;
struct device {int dummy; } ;


 struct tda998x_priv* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tda998x_audio_mute (struct tda998x_priv*,int) ;

int tda998x_audio_digital_mute(struct device *dev, void *data, bool enable)
{
 struct tda998x_priv *priv = dev_get_drvdata(dev);

 mutex_lock(&priv->audio_mutex);

 tda998x_audio_mute(priv, enable);

 mutex_unlock(&priv->audio_mutex);
 return 0;
}
