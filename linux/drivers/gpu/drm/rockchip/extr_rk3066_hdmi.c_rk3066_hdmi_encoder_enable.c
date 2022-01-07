
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk3066_hdmi {int previous_mode; TYPE_1__* dev; int grf_regmap; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 int DRM_DEV_DEBUG (TYPE_1__*,char*,char*) ;
 int GRF_SOC_CON0 ;
 int HDMI_VIDEO_SEL ;
 int drm_of_encoder_active_endpoint_id (int ,struct drm_encoder*) ;
 int regmap_write (int ,int ,int) ;
 int rk3066_hdmi_setup (struct rk3066_hdmi*,int *) ;
 struct rk3066_hdmi* to_rk3066_hdmi (struct drm_encoder*) ;

__attribute__((used)) static void rk3066_hdmi_encoder_enable(struct drm_encoder *encoder)
{
 struct rk3066_hdmi *hdmi = to_rk3066_hdmi(encoder);
 int mux, val;

 mux = drm_of_encoder_active_endpoint_id(hdmi->dev->of_node, encoder);
 if (mux)
  val = (HDMI_VIDEO_SEL << 16) | HDMI_VIDEO_SEL;
 else
  val = HDMI_VIDEO_SEL << 16;

 regmap_write(hdmi->grf_regmap, GRF_SOC_CON0, val);

 DRM_DEV_DEBUG(hdmi->dev, "hdmi encoder enable select: vop%s\n",
        (mux) ? "1" : "0");

 rk3066_hdmi_setup(hdmi, &hdmi->previous_mode);
}
