
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda998x_priv {scalar_t__ rev; int audio_mutex; int sink_has_audio; int cec_notify; TYPE_1__* hdmi; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int REG_TX4 ;
 scalar_t__ TDA19988 ;
 int TX4_PD_RAM ;
 int cec_notifier_set_phys_addr_from_edid (int ,struct edid*) ;
 struct tda998x_priv* conn_to_tda998x_priv (struct drm_connector*) ;
 int dev_warn (int *,char*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int drm_detect_monitor_audio (struct edid*) ;
 struct edid* drm_do_get_edid (struct drm_connector*,int ,struct tda998x_priv*) ;
 int kfree (struct edid*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_edid_block ;
 int reg_clear (struct tda998x_priv*,int ,int ) ;
 int reg_set (struct tda998x_priv*,int ,int ) ;
 scalar_t__ tda998x_edid_delay_wait (struct tda998x_priv*) ;

__attribute__((used)) static int tda998x_connector_get_modes(struct drm_connector *connector)
{
 struct tda998x_priv *priv = conn_to_tda998x_priv(connector);
 struct edid *edid;
 int n;






 if (tda998x_edid_delay_wait(priv))
  return 0;

 if (priv->rev == TDA19988)
  reg_clear(priv, REG_TX4, TX4_PD_RAM);

 edid = drm_do_get_edid(connector, read_edid_block, priv);

 if (priv->rev == TDA19988)
  reg_set(priv, REG_TX4, TX4_PD_RAM);

 if (!edid) {
  dev_warn(&priv->hdmi->dev, "failed to read EDID\n");
  return 0;
 }

 drm_connector_update_edid_property(connector, edid);
 cec_notifier_set_phys_addr_from_edid(priv->cec_notify, edid);

 mutex_lock(&priv->audio_mutex);
 n = drm_add_edid_modes(connector, edid);
 priv->sink_has_audio = drm_detect_monitor_audio(edid);
 mutex_unlock(&priv->audio_mutex);

 kfree(edid);

 return n;
}
