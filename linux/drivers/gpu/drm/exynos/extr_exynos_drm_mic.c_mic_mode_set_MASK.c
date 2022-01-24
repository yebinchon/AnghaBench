#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct exynos_mic {int /*<<< orphan*/  i80_mode; int /*<<< orphan*/  vm; } ;
struct drm_display_mode {int dummy; } ;
struct drm_bridge {TYPE_1__* encoder; struct exynos_mic* driver_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  i80_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_display_mode const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mic_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_bridge *bridge,
			 const struct drm_display_mode *mode,
			 const struct drm_display_mode *adjusted_mode)
{
	struct exynos_mic *mic = bridge->driver_private;

	FUNC1(&mic_mutex);
	FUNC0(mode, &mic->vm);
	mic->i80_mode = FUNC3(bridge->encoder->crtc)->i80_mode;
	FUNC2(&mic_mutex);
}