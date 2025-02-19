
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hdmi {int dummy; } ;


 unsigned int ARRAY_SIZE (unsigned int const*) ;
 int AUDIO_FS_HIGH (unsigned int) ;
 int AUDIO_FS_LOW (unsigned int) ;
 int HDMI_AUDIOCLK_FREQ ;
 int HDMI_NV_PDISP_AUDIO_FS (unsigned int) ;
 int tegra_hdmi_writel (struct tegra_hdmi*,int,int ) ;

__attribute__((used)) static void tegra_hdmi_setup_audio_fs_tables(struct tegra_hdmi *hdmi)
{
 const unsigned int freqs[] = {
  32000, 44100, 48000, 88200, 96000, 176400, 192000
 };
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(freqs); i++) {
  unsigned int f = freqs[i];
  unsigned int eight_half;
  unsigned int delta;
  u32 value;

  if (f > 96000)
   delta = 2;
  else if (f > 48000)
   delta = 6;
  else
   delta = 9;

  eight_half = (8 * HDMI_AUDIOCLK_FREQ) / (f * 128);
  value = AUDIO_FS_LOW(eight_half - delta) |
   AUDIO_FS_HIGH(eight_half + delta);
  tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_AUDIO_FS(i));
 }
}
