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
struct TYPE_2__ {int right; int left; int bottom; int top; } ;
struct drm_cmdline_mode {int xres; int yres; int refresh_specified; int bpp_specified; int rb; int cvt; int interlace; int margins; scalar_t__ force; TYPE_1__ tv_margins; int /*<<< orphan*/  specified; } ;

/* Variables and functions */
 scalar_t__ DRM_FORCE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,struct drm_cmdline_mode*) ; 
 int /*<<< orphan*/  no_connector ; 

__attribute__((used)) static int FUNC2(void *ignored)
{
	struct drm_cmdline_mode mode = { };

	FUNC0(!FUNC1("720x480,margin_right=14,margin_left=24,margin_bottom=36,margin_top=42",
							   &no_connector,
							   &mode));
	FUNC0(!mode.specified);
	FUNC0(mode.xres != 720);
	FUNC0(mode.yres != 480);
	FUNC0(mode.tv_margins.right != 14);
	FUNC0(mode.tv_margins.left != 24);
	FUNC0(mode.tv_margins.bottom != 36);
	FUNC0(mode.tv_margins.top != 42);

	FUNC0(mode.refresh_specified);

	FUNC0(mode.bpp_specified);

	FUNC0(mode.rb);
	FUNC0(mode.cvt);
	FUNC0(mode.interlace);
	FUNC0(mode.margins);
	FUNC0(mode.force != DRM_FORCE_UNSPECIFIED);

	return 0;
}