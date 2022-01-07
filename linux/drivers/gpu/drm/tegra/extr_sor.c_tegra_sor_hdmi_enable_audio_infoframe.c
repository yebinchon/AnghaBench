
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int channels; } ;
struct tegra_sor {int dev; TYPE_1__ format; } ;
struct hdmi_audio_infoframe {int channels; } ;
typedef int buffer ;


 int AUDIO ;
 int HDMI_INFOFRAME_SIZE (int ) ;
 int INFOFRAME_CTRL_CHECKSUM_ENABLE ;
 int INFOFRAME_CTRL_ENABLE ;
 int SOR_HDMI_AUDIO_INFOFRAME_CTRL ;
 int dev_err (int ,char*,int) ;
 int hdmi_audio_infoframe_init (struct hdmi_audio_infoframe*) ;
 int hdmi_audio_infoframe_pack (struct hdmi_audio_infoframe*,int *,int) ;
 int tegra_sor_hdmi_write_infopack (struct tegra_sor*,int *,int) ;
 int tegra_sor_readl (struct tegra_sor*,int ) ;
 int tegra_sor_writel (struct tegra_sor*,int ,int ) ;

__attribute__((used)) static int tegra_sor_hdmi_enable_audio_infoframe(struct tegra_sor *sor)
{
 u8 buffer[HDMI_INFOFRAME_SIZE(AUDIO)];
 struct hdmi_audio_infoframe frame;
 u32 value;
 int err;

 err = hdmi_audio_infoframe_init(&frame);
 if (err < 0) {
  dev_err(sor->dev, "failed to setup audio infoframe: %d\n", err);
  return err;
 }

 frame.channels = sor->format.channels;

 err = hdmi_audio_infoframe_pack(&frame, buffer, sizeof(buffer));
 if (err < 0) {
  dev_err(sor->dev, "failed to pack audio infoframe: %d\n", err);
  return err;
 }

 tegra_sor_hdmi_write_infopack(sor, buffer, err);

 value = tegra_sor_readl(sor, SOR_HDMI_AUDIO_INFOFRAME_CTRL);
 value |= INFOFRAME_CTRL_CHECKSUM_ENABLE;
 value |= INFOFRAME_CTRL_ENABLE;
 tegra_sor_writel(sor, value, SOR_HDMI_AUDIO_INFOFRAME_CTRL);

 return 0;
}
