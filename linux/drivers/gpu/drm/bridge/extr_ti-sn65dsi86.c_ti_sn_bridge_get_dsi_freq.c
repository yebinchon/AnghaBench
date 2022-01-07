
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {TYPE_3__* encoder; } ;
struct ti_sn_bridge {TYPE_5__* dsi; TYPE_4__ bridge; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_10__ {int lanes; int format; } ;
struct TYPE_8__ {TYPE_2__* crtc; } ;
struct TYPE_7__ {TYPE_1__* state; } ;
struct TYPE_6__ {struct drm_display_mode adjusted_mode; } ;


 int mipi_dsi_pixel_format_to_bpp (int ) ;

__attribute__((used)) static u32 ti_sn_bridge_get_dsi_freq(struct ti_sn_bridge *pdata)
{
 u32 bit_rate_khz, clk_freq_khz;
 struct drm_display_mode *mode =
  &pdata->bridge.encoder->crtc->state->adjusted_mode;

 bit_rate_khz = mode->clock *
   mipi_dsi_pixel_format_to_bpp(pdata->dsi->format);
 clk_freq_khz = bit_rate_khz / (pdata->dsi->lanes * 2);

 return clk_freq_khz;
}
