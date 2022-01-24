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
struct tc_data {int /*<<< orphan*/  panel; int /*<<< orphan*/  dev; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 struct tc_data* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct tc_data*) ; 
 int FUNC5 (struct tc_data*) ; 
 int FUNC6 (struct tc_data*) ; 

__attribute__((used)) static void FUNC7(struct drm_bridge *bridge)
{
	struct tc_data *tc = FUNC0(bridge);
	int ret;

	ret = FUNC3(tc);
	if (ret < 0) {
		FUNC1(tc->dev, "failed to read display props: %d\n", ret);
		return;
	}

	ret = FUNC5(tc);
	if (ret < 0) {
		FUNC1(tc->dev, "main link enable error: %d\n", ret);
		return;
	}

	ret = FUNC6(tc);
	if (ret < 0) {
		FUNC1(tc->dev, "main link stream start error: %d\n", ret);
		FUNC4(tc);
		return;
	}

	FUNC2(tc->panel);
}