
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi_host {struct drm_display_mode* mode; } ;
struct drm_display_mode {int clock; } ;



__attribute__((used)) static u32 dsi_get_pclk_rate(struct msm_dsi_host *msm_host, bool is_dual_dsi)
{
 struct drm_display_mode *mode = msm_host->mode;
 u32 pclk_rate;

 pclk_rate = mode->clock * 1000;







 if (is_dual_dsi)
  pclk_rate /= 2;

 return pclk_rate;
}
