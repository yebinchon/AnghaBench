
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ena_ap; } ;
struct tda998x_priv {int audio_mutex; TYPE_1__ audio; } ;
struct device {int dummy; } ;


 int REG_ENA_AP ;
 struct tda998x_priv* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_write (struct tda998x_priv*,int ,int ) ;

__attribute__((used)) static void tda998x_audio_shutdown(struct device *dev, void *data)
{
 struct tda998x_priv *priv = dev_get_drvdata(dev);

 mutex_lock(&priv->audio_mutex);

 reg_write(priv, REG_ENA_AP, 0);
 priv->audio.ena_ap = 0;

 mutex_unlock(&priv->audio_mutex);
}
