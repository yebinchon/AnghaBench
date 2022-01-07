
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii902x {int mutex; int regmap; } ;
struct drm_bridge {int dummy; } ;


 int SII902X_AVI_POWER_STATE_D (int ) ;
 int SII902X_AVI_POWER_STATE_MSK ;
 int SII902X_PWR_STATE_CTRL ;
 int SII902X_SYS_CTRL_DATA ;
 int SII902X_SYS_CTRL_PWR_DWN ;
 struct sii902x* bridge_to_sii902x (struct drm_bridge*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sii902x_bridge_enable(struct drm_bridge *bridge)
{
 struct sii902x *sii902x = bridge_to_sii902x(bridge);

 mutex_lock(&sii902x->mutex);

 regmap_update_bits(sii902x->regmap, SII902X_PWR_STATE_CTRL,
      SII902X_AVI_POWER_STATE_MSK,
      SII902X_AVI_POWER_STATE_D(0));
 regmap_update_bits(sii902x->regmap, SII902X_SYS_CTRL_DATA,
      SII902X_SYS_CTRL_PWR_DWN, 0);

 mutex_unlock(&sii902x->mutex);
}
