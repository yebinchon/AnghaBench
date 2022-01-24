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
struct rcar_du_crtc {int initialized; int /*<<< orphan*/  clock; int /*<<< orphan*/  extclock; int /*<<< orphan*/  group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_du_crtc*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rcar_du_crtc *rcrtc)
{
	int ret;

	/*
	 * Guard against double-get, as the function is called from both the
	 * .atomic_enable() and .atomic_begin() handlers.
	 */
	if (rcrtc->initialized)
		return 0;

	ret = FUNC1(rcrtc->clock);
	if (ret < 0)
		return ret;

	ret = FUNC1(rcrtc->extclock);
	if (ret < 0)
		goto error_clock;

	ret = FUNC3(rcrtc->group);
	if (ret < 0)
		goto error_group;

	FUNC2(rcrtc);
	rcrtc->initialized = true;

	return 0;

error_group:
	FUNC0(rcrtc->extclock);
error_clock:
	FUNC0(rcrtc->clock);
	return ret;
}