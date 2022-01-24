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
struct panel_simple {int prepared; TYPE_2__* desc; int /*<<< orphan*/  supply; int /*<<< orphan*/  enable_gpio; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {scalar_t__ unprepare; } ;
struct TYPE_4__ {TYPE_1__ delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct panel_simple* FUNC3 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct panel_simple *p = FUNC3(panel);

	if (!p->prepared)
		return 0;

	FUNC0(p->enable_gpio, 0);

	FUNC2(p->supply);

	if (p->desc->delay.unprepare)
		FUNC1(p->desc->delay.unprepare);

	p->prepared = false;

	return 0;
}