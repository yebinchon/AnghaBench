
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_output {int dummy; } ;
struct tegra_hdmi {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE ;
 int connector_status_connected ;
 struct tegra_output* connector_to_output (struct drm_connector*) ;
 int tegra_hdmi_writel (struct tegra_hdmi*,int ,int ) ;
 int tegra_output_connector_detect (struct drm_connector*,int) ;
 struct tegra_hdmi* to_hdmi (struct tegra_output*) ;

__attribute__((used)) static enum drm_connector_status
tegra_hdmi_connector_detect(struct drm_connector *connector, bool force)
{
 struct tegra_output *output = connector_to_output(connector);
 struct tegra_hdmi *hdmi = to_hdmi(output);
 enum drm_connector_status status;

 status = tegra_output_connector_detect(connector, force);
 if (status == connector_status_connected)
  return status;

 tegra_hdmi_writel(hdmi, 0, HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE);
 return status;
}
