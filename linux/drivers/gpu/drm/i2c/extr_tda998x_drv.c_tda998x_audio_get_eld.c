
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int eld; } ;
struct tda998x_priv {int audio_mutex; TYPE_1__ connector; } ;
struct device {int dummy; } ;


 struct tda998x_priv* dev_get_drvdata (struct device*) ;
 int memcpy (int *,int ,int ) ;
 int min (int,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tda998x_audio_get_eld(struct device *dev, void *data,
     uint8_t *buf, size_t len)
{
 struct tda998x_priv *priv = dev_get_drvdata(dev);

 mutex_lock(&priv->audio_mutex);
 memcpy(buf, priv->connector.eld,
        min(sizeof(priv->connector.eld), len));
 mutex_unlock(&priv->audio_mutex);

 return 0;
}
