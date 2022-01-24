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
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MSEC_PER_SEC ; 
 int FUNC1 (struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(const struct drm_display_mode *mode)
{
	int refresh, two_frames;

	refresh = FUNC1(mode);
	two_frames = FUNC0(MSEC_PER_SEC, refresh) * 2;
	FUNC2(two_frames);
}