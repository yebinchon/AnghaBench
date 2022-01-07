
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii902x {int mutex; } ;
struct device {int dummy; } ;


 struct sii902x* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sii902x_mute (struct sii902x*,int) ;

__attribute__((used)) static int sii902x_audio_digital_mute(struct device *dev,
          void *data, bool enable)
{
 struct sii902x *sii902x = dev_get_drvdata(dev);

 mutex_lock(&sii902x->mutex);

 sii902x_mute(sii902x, enable);

 mutex_unlock(&sii902x->mutex);

 return 0;
}
