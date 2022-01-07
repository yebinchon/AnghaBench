
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mclk; } ;
struct sii902x {TYPE_1__ audio; int mutex; int regmap; } ;
struct device {int dummy; } ;


 int SII902X_TPI_AUDIO_CONFIG_BYTE2_REG ;
 int SII902X_TPI_AUDIO_INTERFACE_DISABLE ;
 int clk_disable_unprepare (int ) ;
 struct sii902x* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void sii902x_audio_shutdown(struct device *dev, void *data)
{
 struct sii902x *sii902x = dev_get_drvdata(dev);

 mutex_lock(&sii902x->mutex);

 regmap_write(sii902x->regmap, SII902X_TPI_AUDIO_CONFIG_BYTE2_REG,
       SII902X_TPI_AUDIO_INTERFACE_DISABLE);

 mutex_unlock(&sii902x->mutex);

 clk_disable_unprepare(sii902x->audio.mclk);
}
