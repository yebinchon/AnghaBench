#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct videomode {unsigned int hactive; unsigned int vactive; unsigned int hfront_porch; unsigned int hsync_len; unsigned int hback_porch; unsigned int vfront_porch; unsigned int vsync_len; unsigned int vback_porch; unsigned int pixelclock; int flags; } ;
struct dispc_device {TYPE_1__* feat; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {scalar_t__ supports_double_pixel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DISPC_CONTROL ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_DE_HIGH ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_DE_LOW ; 
 int DISPLAY_FLAGS_DOUBLECLK ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_HSYNC_HIGH ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_HSYNC_LOW ; 
 int DISPLAY_FLAGS_INTERLACED ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_PIXDATA_NEGEDGE ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_PIXDATA_POSEDGE ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_SYNC_NEGEDGE ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_SYNC_POSEDGE ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_VSYNC_HIGH ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_VSYNC_LOW ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int,struct videomode*) ; 
 scalar_t__ FUNC4 (struct dispc_device*,int,struct videomode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dispc_device*,int,unsigned int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct dispc_device *dispc,
				  enum omap_channel channel,
				  const struct videomode *vm)
{
	unsigned int xtot, ytot;
	unsigned long ht, vt;
	struct videomode t = *vm;

	FUNC1("channel %d xres %u yres %u\n", channel, t.hactive, t.vactive);

	if (FUNC4(dispc, channel, &t)) {
		FUNC0();
		return;
	}

	if (FUNC6(channel)) {
		FUNC3(dispc, channel, &t);

		xtot = t.hactive + t.hfront_porch + t.hsync_len + t.hback_porch;
		ytot = t.vactive + t.vfront_porch + t.vsync_len + t.vback_porch;

		ht = vm->pixelclock / xtot;
		vt = vm->pixelclock / xtot / ytot;

		FUNC1("pck %lu\n", vm->pixelclock);
		FUNC1("hsync_len %d hfp %d hbp %d vsw %d vfp %d vbp %d\n",
			t.hsync_len, t.hfront_porch, t.hback_porch,
			t.vsync_len, t.vfront_porch, t.vback_porch);
		FUNC1("vsync_level %d hsync_level %d data_pclk_edge %d de_level %d sync_pclk_edge %d\n",
			FUNC7(t.flags, DISPLAY_FLAGS_VSYNC_HIGH, DISPLAY_FLAGS_VSYNC_LOW),
			FUNC7(t.flags, DISPLAY_FLAGS_HSYNC_HIGH, DISPLAY_FLAGS_HSYNC_LOW),
			FUNC7(t.flags, DISPLAY_FLAGS_PIXDATA_POSEDGE, DISPLAY_FLAGS_PIXDATA_NEGEDGE),
			FUNC7(t.flags, DISPLAY_FLAGS_DE_HIGH, DISPLAY_FLAGS_DE_LOW),
			FUNC7(t.flags, DISPLAY_FLAGS_SYNC_POSEDGE, DISPLAY_FLAGS_SYNC_NEGEDGE));

		FUNC1("hsync %luHz, vsync %luHz\n", ht, vt);
	} else {
		if (t.flags & DISPLAY_FLAGS_INTERLACED)
			t.vactive /= 2;

		if (dispc->feat->supports_double_pixel)
			FUNC2(dispc, DISPC_CONTROL,
				    !!(t.flags & DISPLAY_FLAGS_DOUBLECLK),
				    19, 17);
	}

	FUNC5(dispc, channel, t.hactive, t.vactive);
}