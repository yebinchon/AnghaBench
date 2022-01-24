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
struct panel_simple {int prepared; TYPE_2__* desc; scalar_t__ no_hpd; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  supply; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned int prepare; scalar_t__ hpd_absent_delay; } ;
struct TYPE_4__ {TYPE_1__ delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct panel_simple* FUNC4 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct panel_simple *p = FUNC4(panel);
	unsigned int delay;
	int err;

	if (p->prepared)
		return 0;

	err = FUNC3(p->supply);
	if (err < 0) {
		FUNC0(panel->dev, "failed to enable supply: %d\n", err);
		return err;
	}

	FUNC1(p->enable_gpio, 1);

	delay = p->desc->delay.prepare;
	if (p->no_hpd)
		delay += p->desc->delay.hpd_absent_delay;
	if (delay)
		FUNC2(delay);

	p->prepared = true;

	return 0;
}