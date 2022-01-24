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
struct drm_cmdline_mode {int xres; int yres; int refresh; int bpp; int rb; int cvt; int interlace; int margins; scalar_t__ force; int /*<<< orphan*/  bpp_specified; int /*<<< orphan*/  refresh_specified; int /*<<< orphan*/  specified; } ;

/* Variables and functions */
 scalar_t__ DRM_FORCE_ON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,struct drm_cmdline_mode*) ; 
 int /*<<< orphan*/  no_connector ; 

__attribute__((used)) static int FUNC2(void *ignored)
{
	struct drm_cmdline_mode mode = { };

	FUNC0(!FUNC1("720x480-24@60e",
							   &no_connector,
							   &mode));
	FUNC0(!mode.specified);
	FUNC0(mode.xres != 720);
	FUNC0(mode.yres != 480);

	FUNC0(!mode.refresh_specified);
	FUNC0(mode.refresh != 60);

	FUNC0(!mode.bpp_specified);
	FUNC0(mode.bpp != 24);

	FUNC0(mode.rb);
	FUNC0(mode.cvt);
	FUNC0(mode.interlace);
	FUNC0(mode.margins);
	FUNC0(mode.force != DRM_FORCE_ON);

	return 0;
}