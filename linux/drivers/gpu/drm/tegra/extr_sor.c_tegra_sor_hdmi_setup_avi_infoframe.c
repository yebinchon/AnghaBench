
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int connector; } ;
struct tegra_sor {int dev; TYPE_1__ output; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_display_mode {int dummy; } ;
typedef int buffer ;


 int AVI ;
 int HDMI_INFOFRAME_SIZE (int ) ;
 int INFOFRAME_CTRL_CHECKSUM_ENABLE ;
 int INFOFRAME_CTRL_ENABLE ;
 int INFOFRAME_CTRL_OTHER ;
 int INFOFRAME_CTRL_SINGLE ;
 int SOR_HDMI_AVI_INFOFRAME_CTRL ;
 int dev_err (int ,char*,int) ;
 int drm_hdmi_avi_infoframe_from_display_mode (struct hdmi_avi_infoframe*,int *,struct drm_display_mode const*) ;
 int hdmi_avi_infoframe_pack (struct hdmi_avi_infoframe*,int *,int) ;
 int tegra_sor_hdmi_write_infopack (struct tegra_sor*,int *,int) ;
 int tegra_sor_readl (struct tegra_sor*,int ) ;
 int tegra_sor_writel (struct tegra_sor*,int ,int ) ;

__attribute__((used)) static int
tegra_sor_hdmi_setup_avi_infoframe(struct tegra_sor *sor,
       const struct drm_display_mode *mode)
{
 u8 buffer[HDMI_INFOFRAME_SIZE(AVI)];
 struct hdmi_avi_infoframe frame;
 u32 value;
 int err;


 value = tegra_sor_readl(sor, SOR_HDMI_AVI_INFOFRAME_CTRL);
 value &= ~INFOFRAME_CTRL_SINGLE;
 value &= ~INFOFRAME_CTRL_OTHER;
 value &= ~INFOFRAME_CTRL_ENABLE;
 tegra_sor_writel(sor, value, SOR_HDMI_AVI_INFOFRAME_CTRL);

 err = drm_hdmi_avi_infoframe_from_display_mode(&frame,
             &sor->output.connector, mode);
 if (err < 0) {
  dev_err(sor->dev, "failed to setup AVI infoframe: %d\n", err);
  return err;
 }

 err = hdmi_avi_infoframe_pack(&frame, buffer, sizeof(buffer));
 if (err < 0) {
  dev_err(sor->dev, "failed to pack AVI infoframe: %d\n", err);
  return err;
 }

 tegra_sor_hdmi_write_infopack(sor, buffer, err);


 value = tegra_sor_readl(sor, SOR_HDMI_AVI_INFOFRAME_CTRL);
 value |= INFOFRAME_CTRL_CHECKSUM_ENABLE;
 value |= INFOFRAME_CTRL_ENABLE;
 tegra_sor_writel(sor, value, SOR_HDMI_AVI_INFOFRAME_CTRL);

 return 0;
}
