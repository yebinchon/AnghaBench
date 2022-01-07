
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dc {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int DC_CMD_INT_MASK ;
 int VBLANK_INT ;
 int tegra_dc_readl (struct tegra_dc*,int ) ;
 int tegra_dc_writel (struct tegra_dc*,int ,int ) ;
 struct tegra_dc* to_tegra_dc (struct drm_crtc*) ;

__attribute__((used)) static int tegra_dc_enable_vblank(struct drm_crtc *crtc)
{
 struct tegra_dc *dc = to_tegra_dc(crtc);
 u32 value;

 value = tegra_dc_readl(dc, DC_CMD_INT_MASK);
 value |= VBLANK_INT;
 tegra_dc_writel(dc, value, DC_CMD_INT_MASK);

 return 0;
}
