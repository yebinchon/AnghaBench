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
struct drm_cmdline_mode {int refresh; scalar_t__ interlace; scalar_t__ margins; scalar_t__ rb; scalar_t__ refresh_specified; int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; int /*<<< orphan*/  name; scalar_t__ force; } ;
struct drm_connector {int /*<<< orphan*/  name; scalar_t__ force; struct drm_cmdline_mode cmdline_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct drm_connector*,struct drm_cmdline_mode*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static void FUNC5(struct drm_connector *connector)
{
	struct drm_cmdline_mode *mode = &connector->cmdline_mode;
	char *option = NULL;

	if (FUNC4(connector->name, &option))
		return;

	if (!FUNC3(option,
						       connector,
						       mode))
		return;

	if (mode->force) {
		FUNC1("forcing %s connector %s\n", connector->name,
			 FUNC2(mode->force));
		connector->force = mode->force;
	}

	FUNC0("cmdline mode for connector %s %s %dx%d@%dHz%s%s%s\n",
		      connector->name, mode->name,
		      mode->xres, mode->yres,
		      mode->refresh_specified ? mode->refresh : 60,
		      mode->rb ? " reduced blanking" : "",
		      mode->margins ? " with margins" : "",
		      mode->interlace ?  " interlaced" : "");
}