
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videomode {unsigned int hactive; unsigned int vactive; unsigned int hfront_porch; unsigned int hsync_len; unsigned int hback_porch; unsigned int vfront_porch; unsigned int vsync_len; unsigned int vback_porch; unsigned int pixelclock; int flags; } ;
struct dispc_device {TYPE_1__* feat; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {scalar_t__ supports_double_pixel; } ;


 int BUG () ;
 int DISPC_CONTROL ;
 int DISPLAY_FLAGS_DE_HIGH ;
 int DISPLAY_FLAGS_DE_LOW ;
 int DISPLAY_FLAGS_DOUBLECLK ;
 int DISPLAY_FLAGS_HSYNC_HIGH ;
 int DISPLAY_FLAGS_HSYNC_LOW ;
 int DISPLAY_FLAGS_INTERLACED ;
 int DISPLAY_FLAGS_PIXDATA_NEGEDGE ;
 int DISPLAY_FLAGS_PIXDATA_POSEDGE ;
 int DISPLAY_FLAGS_SYNC_NEGEDGE ;
 int DISPLAY_FLAGS_SYNC_POSEDGE ;
 int DISPLAY_FLAGS_VSYNC_HIGH ;
 int DISPLAY_FLAGS_VSYNC_LOW ;
 int DSSDBG (char*,unsigned long,...) ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;
 int _dispc_mgr_set_lcd_timings (struct dispc_device*,int,struct videomode*) ;
 scalar_t__ dispc_mgr_check_timings (struct dispc_device*,int,struct videomode*) ;
 int dispc_mgr_set_size (struct dispc_device*,int,unsigned int,int) ;
 scalar_t__ dss_mgr_is_lcd (int) ;
 int vm_flag_to_int (int,int ,int ) ;

__attribute__((used)) static void dispc_mgr_set_timings(struct dispc_device *dispc,
      enum omap_channel channel,
      const struct videomode *vm)
{
 unsigned int xtot, ytot;
 unsigned long ht, vt;
 struct videomode t = *vm;

 DSSDBG("channel %d xres %u yres %u\n", channel, t.hactive, t.vactive);

 if (dispc_mgr_check_timings(dispc, channel, &t)) {
  BUG();
  return;
 }

 if (dss_mgr_is_lcd(channel)) {
  _dispc_mgr_set_lcd_timings(dispc, channel, &t);

  xtot = t.hactive + t.hfront_porch + t.hsync_len + t.hback_porch;
  ytot = t.vactive + t.vfront_porch + t.vsync_len + t.vback_porch;

  ht = vm->pixelclock / xtot;
  vt = vm->pixelclock / xtot / ytot;

  DSSDBG("pck %lu\n", vm->pixelclock);
  DSSDBG("hsync_len %d hfp %d hbp %d vsw %d vfp %d vbp %d\n",
   t.hsync_len, t.hfront_porch, t.hback_porch,
   t.vsync_len, t.vfront_porch, t.vback_porch);
  DSSDBG("vsync_level %d hsync_level %d data_pclk_edge %d de_level %d sync_pclk_edge %d\n",
   vm_flag_to_int(t.flags, DISPLAY_FLAGS_VSYNC_HIGH, DISPLAY_FLAGS_VSYNC_LOW),
   vm_flag_to_int(t.flags, DISPLAY_FLAGS_HSYNC_HIGH, DISPLAY_FLAGS_HSYNC_LOW),
   vm_flag_to_int(t.flags, DISPLAY_FLAGS_PIXDATA_POSEDGE, DISPLAY_FLAGS_PIXDATA_NEGEDGE),
   vm_flag_to_int(t.flags, DISPLAY_FLAGS_DE_HIGH, DISPLAY_FLAGS_DE_LOW),
   vm_flag_to_int(t.flags, DISPLAY_FLAGS_SYNC_POSEDGE, DISPLAY_FLAGS_SYNC_NEGEDGE));

  DSSDBG("hsync %luHz, vsync %luHz\n", ht, vt);
 } else {
  if (t.flags & DISPLAY_FLAGS_INTERLACED)
   t.vactive /= 2;

  if (dispc->feat->supports_double_pixel)
   REG_FLD_MOD(dispc, DISPC_CONTROL,
        !!(t.flags & DISPLAY_FLAGS_DOUBLECLK),
        19, 17);
 }

 dispc_mgr_set_size(dispc, channel, t.hactive, t.vactive);
}
