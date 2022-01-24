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
struct st7701 {int /*<<< orphan*/  supplies; TYPE_1__* desc; int /*<<< orphan*/  sleep_delay; int /*<<< orphan*/  reset; } ;
struct drm_panel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_ENTER_SLEEP_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct st7701*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct st7701* FUNC3 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct st7701 *st7701 = FUNC3(panel);

	FUNC0(st7701, MIPI_DCS_ENTER_SLEEP_MODE, 0x00);

	FUNC2(st7701->sleep_delay);

	FUNC1(st7701->reset, 0);

	/**
	 * During the Resetting period, the display will be blanked
	 * (The display is entering blanking sequence, which maximum
	 * time is 120 ms, when Reset Starts in Sleep Out –mode. The
	 * display remains the blank state in Sleep In –mode.) and
	 * then return to Default condition for Hardware Reset.
	 *
	 * So we need wait sleep_delay time to make sure reset completed.
	 */
	FUNC2(st7701->sleep_delay);

	FUNC4(st7701->desc->num_supplies, st7701->supplies);

	return 0;
}