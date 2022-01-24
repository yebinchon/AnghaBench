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
struct seiko_panel {int prepared; int /*<<< orphan*/  dvdd; int /*<<< orphan*/  avdd; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct seiko_panel* FUNC4 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct seiko_panel *p = FUNC4(panel);
	int err;

	if (p->prepared)
		return 0;

	err = FUNC3(p->dvdd);
	if (err < 0) {
		FUNC0(panel->dev, "failed to enable dvdd: %d\n", err);
		return err;
	}

	/* Add a 100ms delay as per the panel datasheet */
	FUNC1(100);

	err = FUNC3(p->avdd);
	if (err < 0) {
		FUNC0(panel->dev, "failed to enable avdd: %d\n", err);
		goto disable_dvdd;
	}

	p->prepared = true;

	return 0;

disable_dvdd:
	FUNC2(p->dvdd);
	return err;
}