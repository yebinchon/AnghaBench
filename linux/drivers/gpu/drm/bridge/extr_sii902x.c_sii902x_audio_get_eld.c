
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int eld; } ;
struct sii902x {int mutex; TYPE_1__ connector; } ;
struct device {int dummy; } ;


 struct sii902x* dev_get_drvdata (struct device*) ;
 int memcpy (int *,int ,int ) ;
 int min (int,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int sii902x_audio_get_eld(struct device *dev, void *data,
     uint8_t *buf, size_t len)
{
 struct sii902x *sii902x = dev_get_drvdata(dev);

 mutex_lock(&sii902x->mutex);

 memcpy(buf, sii902x->connector.eld,
        min(sizeof(sii902x->connector.eld), len));

 mutex_unlock(&sii902x->mutex);

 return 0;
}
