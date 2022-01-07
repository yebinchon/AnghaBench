
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sii902x {int mutex; int regmap; TYPE_1__* i2cmux; } ;
struct edid {int dummy; } ;
struct drm_connector {int display_info; } ;
struct TYPE_2__ {int * adapter; } ;


 int MEDIA_BUS_FMT_RGB888_1X24 ;
 int SII902X_SYS_CTRL_DATA ;
 int SII902X_SYS_CTRL_OUTPUT_DVI ;
 int SII902X_SYS_CTRL_OUTPUT_HDMI ;
 int SII902X_SYS_CTRL_OUTPUT_MODE ;
 struct sii902x* connector_to_sii902x (struct drm_connector*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 scalar_t__ drm_detect_hdmi_monitor (struct edid*) ;
 int drm_display_info_set_bus_formats (int *,int *,int) ;
 struct edid* drm_get_edid (struct drm_connector*,int ) ;
 int kfree (struct edid*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int sii902x_get_modes(struct drm_connector *connector)
{
 struct sii902x *sii902x = connector_to_sii902x(connector);
 u32 bus_format = MEDIA_BUS_FMT_RGB888_1X24;
 u8 output_mode = SII902X_SYS_CTRL_OUTPUT_DVI;
 struct edid *edid;
 int num = 0, ret;

 mutex_lock(&sii902x->mutex);

 edid = drm_get_edid(connector, sii902x->i2cmux->adapter[0]);
 drm_connector_update_edid_property(connector, edid);
 if (edid) {
  if (drm_detect_hdmi_monitor(edid))
   output_mode = SII902X_SYS_CTRL_OUTPUT_HDMI;

  num = drm_add_edid_modes(connector, edid);
  kfree(edid);
 }

 ret = drm_display_info_set_bus_formats(&connector->display_info,
            &bus_format, 1);
 if (ret)
  goto error_out;

 ret = regmap_update_bits(sii902x->regmap, SII902X_SYS_CTRL_DATA,
     SII902X_SYS_CTRL_OUTPUT_MODE, output_mode);
 if (ret)
  goto error_out;

 ret = num;

error_out:
 mutex_unlock(&sii902x->mutex);

 return ret;
}
