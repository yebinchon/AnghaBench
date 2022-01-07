
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispc_device {TYPE_1__* feat; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {unsigned long max_lcd_pclk; unsigned long max_tv_pclk; } ;


 scalar_t__ dss_mgr_is_lcd (int) ;

__attribute__((used)) static bool _dispc_mgr_pclk_ok(struct dispc_device *dispc,
          enum omap_channel channel,
          unsigned long pclk)
{
 if (dss_mgr_is_lcd(channel))
  return pclk <= dispc->feat->max_lcd_pclk;
 else
  return pclk <= dispc->feat->max_tv_pclk;
}
