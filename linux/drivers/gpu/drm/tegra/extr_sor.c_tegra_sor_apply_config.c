
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_sor_config {int hblank_symbols; int vblank_symbols; scalar_t__ active_polarity; int active_frac; int active_count; int watermark; int tu_size; } ;
struct tegra_sor {int dummy; } ;


 int SOR_DP_AUDIO_HBLANK_SYMBOLS ;
 int SOR_DP_AUDIO_HBLANK_SYMBOLS_MASK ;
 int SOR_DP_AUDIO_VBLANK_SYMBOLS ;
 int SOR_DP_AUDIO_VBLANK_SYMBOLS_MASK ;
 int SOR_DP_CONFIG0 ;
 int SOR_DP_CONFIG_ACTIVE_SYM_COUNT (int ) ;
 int SOR_DP_CONFIG_ACTIVE_SYM_COUNT_MASK ;
 int SOR_DP_CONFIG_ACTIVE_SYM_ENABLE ;
 int SOR_DP_CONFIG_ACTIVE_SYM_FRAC (int ) ;
 int SOR_DP_CONFIG_ACTIVE_SYM_FRAC_MASK ;
 int SOR_DP_CONFIG_ACTIVE_SYM_POLARITY ;
 int SOR_DP_CONFIG_DISPARITY_NEGATIVE ;
 int SOR_DP_CONFIG_WATERMARK (int ) ;
 int SOR_DP_CONFIG_WATERMARK_MASK ;
 int SOR_DP_LINKCTL0 ;
 int SOR_DP_LINKCTL_TU_SIZE (int ) ;
 int SOR_DP_LINKCTL_TU_SIZE_MASK ;
 int tegra_sor_readl (struct tegra_sor*,int ) ;
 int tegra_sor_writel (struct tegra_sor*,int,int ) ;

__attribute__((used)) static void tegra_sor_apply_config(struct tegra_sor *sor,
       const struct tegra_sor_config *config)
{
 u32 value;

 value = tegra_sor_readl(sor, SOR_DP_LINKCTL0);
 value &= ~SOR_DP_LINKCTL_TU_SIZE_MASK;
 value |= SOR_DP_LINKCTL_TU_SIZE(config->tu_size);
 tegra_sor_writel(sor, value, SOR_DP_LINKCTL0);

 value = tegra_sor_readl(sor, SOR_DP_CONFIG0);
 value &= ~SOR_DP_CONFIG_WATERMARK_MASK;
 value |= SOR_DP_CONFIG_WATERMARK(config->watermark);

 value &= ~SOR_DP_CONFIG_ACTIVE_SYM_COUNT_MASK;
 value |= SOR_DP_CONFIG_ACTIVE_SYM_COUNT(config->active_count);

 value &= ~SOR_DP_CONFIG_ACTIVE_SYM_FRAC_MASK;
 value |= SOR_DP_CONFIG_ACTIVE_SYM_FRAC(config->active_frac);

 if (config->active_polarity)
  value |= SOR_DP_CONFIG_ACTIVE_SYM_POLARITY;
 else
  value &= ~SOR_DP_CONFIG_ACTIVE_SYM_POLARITY;

 value |= SOR_DP_CONFIG_ACTIVE_SYM_ENABLE;
 value |= SOR_DP_CONFIG_DISPARITY_NEGATIVE;
 tegra_sor_writel(sor, value, SOR_DP_CONFIG0);

 value = tegra_sor_readl(sor, SOR_DP_AUDIO_HBLANK_SYMBOLS);
 value &= ~SOR_DP_AUDIO_HBLANK_SYMBOLS_MASK;
 value |= config->hblank_symbols & 0xffff;
 tegra_sor_writel(sor, value, SOR_DP_AUDIO_HBLANK_SYMBOLS);

 value = tegra_sor_readl(sor, SOR_DP_AUDIO_VBLANK_SYMBOLS);
 value &= ~SOR_DP_AUDIO_VBLANK_SYMBOLS_MASK;
 value |= config->vblank_symbols & 0xffff;
 tegra_sor_writel(sor, value, SOR_DP_AUDIO_VBLANK_SYMBOLS);
}
