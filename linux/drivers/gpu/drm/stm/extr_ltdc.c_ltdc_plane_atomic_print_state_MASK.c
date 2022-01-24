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
struct ltdc_device {struct fps_info* plane_fpsi; } ;
struct fps_info {int counter; int /*<<< orphan*/  last_timestamp; } ;
struct drm_printer {int dummy; } ;
struct drm_plane_state {struct drm_plane* plane; } ;
struct drm_plane {size_t index; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_printer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct ltdc_device* FUNC5 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC6(struct drm_printer *p,
					  const struct drm_plane_state *state)
{
	struct drm_plane *plane = state->plane;
	struct ltdc_device *ldev = FUNC5(plane);
	struct fps_info *fpsi = &ldev->plane_fpsi[plane->index];
	int ms_since_last;
	ktime_t now;

	now = FUNC2();
	ms_since_last = FUNC4(FUNC3(now, fpsi->last_timestamp));

	FUNC1(p, "\tuser_updates=%dfps\n",
		   FUNC0(fpsi->counter * 1000, ms_since_last));

	fpsi->last_timestamp = now;
	fpsi->counter = 0;
}