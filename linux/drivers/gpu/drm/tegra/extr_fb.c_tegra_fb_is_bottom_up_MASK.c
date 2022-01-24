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
struct tegra_bo {int flags; } ;
struct drm_framebuffer {int dummy; } ;

/* Variables and functions */
 int TEGRA_BO_BOTTOM_UP ; 
 struct tegra_bo* FUNC0 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 

bool FUNC1(struct drm_framebuffer *framebuffer)
{
	struct tegra_bo *bo = FUNC0(framebuffer, 0);

	if (bo->flags & TEGRA_BO_BOTTOM_UP)
		return true;

	return false;
}