#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sdi_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct drm_display_mode {int clock; } ;
struct dispc_clock_info {unsigned long lck_div; unsigned long pck_div; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned long) ; 
 int EINVAL ; 
 struct sdi_device* FUNC1 (struct omap_dss_device*) ; 
 int FUNC2 (struct sdi_device*,unsigned long,unsigned long*,struct dispc_clock_info*) ; 

__attribute__((used)) static int FUNC3(struct omap_dss_device *dssdev,
			     struct drm_display_mode *mode)
{
	struct sdi_device *sdi = FUNC1(dssdev);
	struct dispc_clock_info dispc_cinfo;
	unsigned long pixelclock = mode->clock * 1000;
	unsigned long fck;
	unsigned long pck;
	int r;

	if (pixelclock == 0)
		return -EINVAL;

	r = FUNC2(sdi, pixelclock, &fck, &dispc_cinfo);
	if (r)
		return r;

	pck = fck / dispc_cinfo.lck_div / dispc_cinfo.pck_div;

	if (pck != pixelclock) {
		FUNC0("Pixel clock adjusted from %lu Hz to %lu Hz\n",
			pixelclock, pck);

		mode->clock = pck / 1000;
	}

	return 0;
}