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
struct sharp_panel {int prepared; int /*<<< orphan*/  supply; int /*<<< orphan*/  link1; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sharp_panel*,int) ; 
 struct sharp_panel* FUNC6 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC7(struct drm_panel *panel)
{
	struct sharp_panel *sharp = FUNC6(panel);
	int err;

	if (!sharp->prepared)
		return 0;

	FUNC5(sharp, 4);

	err = FUNC2(sharp->link1);
	if (err < 0)
		FUNC0(panel->dev, "failed to set display off: %d\n", err);

	err = FUNC1(sharp->link1);
	if (err < 0)
		FUNC0(panel->dev, "failed to enter sleep mode: %d\n", err);

	FUNC3(120);

	FUNC4(sharp->supply);

	sharp->prepared = false;

	return 0;
}