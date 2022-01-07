
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int flags; int vback_porch; int vfront_porch; int vsync_len; int hback_porch; int hfront_porch; int hsync_len; int pixelclock; int vactive; int hactive; } ;
struct dispc_device {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPLAY_FLAGS_INTERLACED ;
 int MODE_BAD ;
 int MODE_OK ;
 int _dispc_lcd_timings_ok (struct dispc_device*,int ,int ,int ,int ,int ,int ) ;
 int _dispc_mgr_pclk_ok (struct dispc_device*,int,int ) ;
 int _dispc_mgr_size_ok (struct dispc_device*,int ,int ) ;
 scalar_t__ dss_mgr_is_lcd (int) ;

__attribute__((used)) static int dispc_mgr_check_timings(struct dispc_device *dispc,
       enum omap_channel channel,
       const struct videomode *vm)
{
 if (!_dispc_mgr_size_ok(dispc, vm->hactive, vm->vactive))
  return MODE_BAD;

 if (!_dispc_mgr_pclk_ok(dispc, channel, vm->pixelclock))
  return MODE_BAD;

 if (dss_mgr_is_lcd(channel)) {

  if (vm->flags & DISPLAY_FLAGS_INTERLACED)
   return MODE_BAD;

  if (!_dispc_lcd_timings_ok(dispc, vm->hsync_len,
    vm->hfront_porch, vm->hback_porch,
    vm->vsync_len, vm->vfront_porch,
    vm->vback_porch))
   return MODE_BAD;
 }

 return MODE_OK;
}
