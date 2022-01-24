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
struct st7701 {int /*<<< orphan*/  reset; int /*<<< orphan*/  supplies; TYPE_1__* desc; } ;
struct drm_panel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct st7701* FUNC2 (struct drm_panel*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct st7701*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct st7701 *st7701 = FUNC2(panel);
	int ret;

	FUNC0(st7701->reset, 0);

	ret = FUNC3(st7701->desc->num_supplies,
				    st7701->supplies);
	if (ret < 0)
		return ret;
	FUNC1(20);

	FUNC0(st7701->reset, 1);
	FUNC1(150);

	FUNC4(st7701);

	return 0;
}